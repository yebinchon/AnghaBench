
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct mlx5_eswitch {TYPE_1__ fdb_table; } ;


 int ESW_FDB_CHAINS_AND_PRIOS_SUPPORTED ;
 int esw_put_prio_table (struct mlx5_eswitch*,int ,int,int) ;

__attribute__((used)) static void esw_destroy_offloads_fast_fdb_tables(struct mlx5_eswitch *esw)
{

 if (!(esw->fdb_table.flags & ESW_FDB_CHAINS_AND_PRIOS_SUPPORTED)) {
  esw_put_prio_table(esw, 0, 1, 1);
  esw_put_prio_table(esw, 0, 1, 0);
 }
}
