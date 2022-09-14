require 'pg'

def run_sql(sql, sql_params = [])
  db = PG.connect(dbname: 'd_and_e_db')
  results = db.exec_params(sql, sql_params)
  db.close
  results
end