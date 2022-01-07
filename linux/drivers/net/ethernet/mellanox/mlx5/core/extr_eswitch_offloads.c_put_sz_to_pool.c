
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * fdb_left; } ;
struct TYPE_4__ {TYPE_1__ offloads; } ;
struct mlx5_eswitch {TYPE_2__ fdb_table; } ;


 int ARRAY_SIZE (int*) ;
 int* ESW_POOLS ;

__attribute__((used)) static void
put_sz_to_pool(struct mlx5_eswitch *esw, int sz)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(ESW_POOLS); i++) {
  if (sz >= ESW_POOLS[i]) {
   ++esw->fdb_table.offloads.fdb_left[i];
   break;
  }
 }
}
