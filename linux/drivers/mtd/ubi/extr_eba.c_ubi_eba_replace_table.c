
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_volume {struct ubi_eba_table* eba_tbl; } ;
struct ubi_eba_table {int dummy; } ;


 int ubi_eba_destroy_table (struct ubi_eba_table*) ;

void ubi_eba_replace_table(struct ubi_volume *vol, struct ubi_eba_table *tbl)
{
 ubi_eba_destroy_table(vol->eba_tbl);
 vol->eba_tbl = tbl;
}
