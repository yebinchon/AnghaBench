
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * promisc_grp; int * allmulti_grp; int * addr_grp; int * fdb; } ;
struct TYPE_4__ {TYPE_1__ legacy; } ;
struct mlx5_eswitch {TYPE_2__ fdb_table; int dev; } ;


 int esw_debug (int ,char*) ;
 int mlx5_destroy_flow_group (int *) ;
 int mlx5_destroy_flow_table (int *) ;

__attribute__((used)) static void esw_destroy_legacy_fdb_table(struct mlx5_eswitch *esw)
{
 esw_debug(esw->dev, "Destroy FDB Table\n");
 if (!esw->fdb_table.legacy.fdb)
  return;

 if (esw->fdb_table.legacy.promisc_grp)
  mlx5_destroy_flow_group(esw->fdb_table.legacy.promisc_grp);
 if (esw->fdb_table.legacy.allmulti_grp)
  mlx5_destroy_flow_group(esw->fdb_table.legacy.allmulti_grp);
 if (esw->fdb_table.legacy.addr_grp)
  mlx5_destroy_flow_group(esw->fdb_table.legacy.addr_grp);
 mlx5_destroy_flow_table(esw->fdb_table.legacy.fdb);

 esw->fdb_table.legacy.fdb = ((void*)0);
 esw->fdb_table.legacy.addr_grp = ((void*)0);
 esw->fdb_table.legacy.allmulti_grp = ((void*)0);
 esw->fdb_table.legacy.promisc_grp = ((void*)0);
}
