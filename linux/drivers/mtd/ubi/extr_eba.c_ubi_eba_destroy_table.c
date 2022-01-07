
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_eba_table {struct ubi_eba_table* entries; } ;


 int kfree (struct ubi_eba_table*) ;

void ubi_eba_destroy_table(struct ubi_eba_table *tbl)
{
 if (!tbl)
  return;

 kfree(tbl->entries);
 kfree(tbl);
}
