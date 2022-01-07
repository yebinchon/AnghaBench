
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubi_volume {struct ubi_eba_table* eba_tbl; } ;
struct ubi_eba_table {TYPE_1__* entries; } ;
struct TYPE_2__ {int pnum; } ;


 int ubi_assert (int ) ;

void ubi_eba_copy_table(struct ubi_volume *vol, struct ubi_eba_table *dst,
   int nentries)
{
 struct ubi_eba_table *src;
 int i;

 ubi_assert(dst && vol && vol->eba_tbl);

 src = vol->eba_tbl;

 for (i = 0; i < nentries; i++)
  dst->entries[i].pnum = src->entries[i].pnum;
}
