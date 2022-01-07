
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * vepa_star_rule; int * vepa_uplink_rule; } ;
struct TYPE_4__ {TYPE_1__ legacy; } ;
struct mlx5_eswitch {TYPE_2__ fdb_table; } ;


 int mlx5_del_flow_rules (int *) ;

__attribute__((used)) static void esw_cleanup_vepa_rules(struct mlx5_eswitch *esw)
{
 if (esw->fdb_table.legacy.vepa_uplink_rule)
  mlx5_del_flow_rules(esw->fdb_table.legacy.vepa_uplink_rule);

 if (esw->fdb_table.legacy.vepa_star_rule)
  mlx5_del_flow_rules(esw->fdb_table.legacy.vepa_star_rule);

 esw->fdb_table.legacy.vepa_uplink_rule = ((void*)0);
 esw->fdb_table.legacy.vepa_star_rule = ((void*)0);
}
