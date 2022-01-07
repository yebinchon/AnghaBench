
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sectorsize; } ;
struct atmel_pmecc_user_req {TYPE_1__ ecc; } ;
struct atmel_pmecc_gf_tables {int dummy; } ;


 int IS_ERR (struct atmel_pmecc_gf_tables const*) ;
 struct atmel_pmecc_gf_tables* atmel_pmecc_create_gf_tables (struct atmel_pmecc_user_req const*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct atmel_pmecc_gf_tables* pmecc_gf_tables_1024 ;
 struct atmel_pmecc_gf_tables* pmecc_gf_tables_512 ;
 int pmecc_gf_tables_lock ;

__attribute__((used)) static const struct atmel_pmecc_gf_tables *
atmel_pmecc_get_gf_tables(const struct atmel_pmecc_user_req *req)
{
 const struct atmel_pmecc_gf_tables **gf_tables, *ret;

 mutex_lock(&pmecc_gf_tables_lock);
 if (req->ecc.sectorsize == 512)
  gf_tables = &pmecc_gf_tables_512;
 else
  gf_tables = &pmecc_gf_tables_1024;

 ret = *gf_tables;

 if (!ret) {
  ret = atmel_pmecc_create_gf_tables(req);
  if (!IS_ERR(ret))
   *gf_tables = ret;
 }
 mutex_unlock(&pmecc_gf_tables_lock);

 return ret;
}
