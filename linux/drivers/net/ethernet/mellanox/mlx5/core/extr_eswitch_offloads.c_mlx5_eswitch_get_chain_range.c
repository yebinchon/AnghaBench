
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int flags; } ;
struct mlx5_eswitch {TYPE_1__ fdb_table; } ;


 int ESW_FDB_CHAINS_AND_PRIOS_SUPPORTED ;
 int FDB_MAX_CHAIN ;

u32 mlx5_eswitch_get_chain_range(struct mlx5_eswitch *esw)
{
 if (esw->fdb_table.flags & ESW_FDB_CHAINS_AND_PRIOS_SUPPORTED)
  return FDB_MAX_CHAIN;

 return 0;
}
