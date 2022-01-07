
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esw_mc_addr {scalar_t__ uplink_rule; } ;
struct mlx5_eswitch {struct esw_mc_addr mc_promisc; } ;


 int esw_destroy_legacy_table (struct mlx5_eswitch*) ;
 int mlx5_del_flow_rules (scalar_t__) ;
 int mlx5_eswitch_disable_pf_vf_vports (struct mlx5_eswitch*) ;

__attribute__((used)) static void esw_legacy_disable(struct mlx5_eswitch *esw)
{
 struct esw_mc_addr *mc_promisc;

 mlx5_eswitch_disable_pf_vf_vports(esw);

 mc_promisc = &esw->mc_promisc;
 if (mc_promisc->uplink_rule)
  mlx5_del_flow_rules(mc_promisc->uplink_rule);

 esw_destroy_legacy_table(esw);
}
