
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * vepa_fdb; } ;
struct TYPE_4__ {TYPE_1__ legacy; } ;
struct mlx5_eswitch {TYPE_2__ fdb_table; int dev; } ;


 int esw_debug (int ,char*) ;
 int mlx5_destroy_flow_table (int *) ;

__attribute__((used)) static void esw_destroy_legacy_vepa_table(struct mlx5_eswitch *esw)
{
 esw_debug(esw->dev, "Destroy VEPA Table\n");
 if (!esw->fdb_table.legacy.vepa_fdb)
  return;

 mlx5_destroy_flow_table(esw->fdb_table.legacy.vepa_fdb);
 esw->fdb_table.legacy.vepa_fdb = ((void*)0);
}
