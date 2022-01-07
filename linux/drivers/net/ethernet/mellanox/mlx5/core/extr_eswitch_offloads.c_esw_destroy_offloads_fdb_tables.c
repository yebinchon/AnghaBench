
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ns; int slow_fdb; int miss_grp; int peer_miss_grp; int send_to_vport_grp; int miss_rule_uni; int miss_rule_multi; } ;
struct TYPE_4__ {TYPE_1__ offloads; } ;
struct mlx5_eswitch {TYPE_2__ fdb_table; int dev; } ;


 int MLX5_FLOW_STEERING_MODE_DMFS ;
 int esw_debug (int ,char*) ;
 int esw_destroy_offloads_fast_fdb_tables (struct mlx5_eswitch*) ;
 int mlx5_del_flow_rules (int ) ;
 int mlx5_destroy_flow_group (int ) ;
 int mlx5_destroy_flow_table (int ) ;
 int mlx5_flow_namespace_set_mode (int ,int ) ;

__attribute__((used)) static void esw_destroy_offloads_fdb_tables(struct mlx5_eswitch *esw)
{
 if (!esw->fdb_table.offloads.slow_fdb)
  return;

 esw_debug(esw->dev, "Destroy offloads FDB Tables\n");
 mlx5_del_flow_rules(esw->fdb_table.offloads.miss_rule_multi);
 mlx5_del_flow_rules(esw->fdb_table.offloads.miss_rule_uni);
 mlx5_destroy_flow_group(esw->fdb_table.offloads.send_to_vport_grp);
 mlx5_destroy_flow_group(esw->fdb_table.offloads.peer_miss_grp);
 mlx5_destroy_flow_group(esw->fdb_table.offloads.miss_grp);

 mlx5_destroy_flow_table(esw->fdb_table.offloads.slow_fdb);
 esw_destroy_offloads_fast_fdb_tables(esw);

 mlx5_flow_namespace_set_mode(esw->fdb_table.offloads.ns,
         MLX5_FLOW_STEERING_MODE_DMFS);
}
