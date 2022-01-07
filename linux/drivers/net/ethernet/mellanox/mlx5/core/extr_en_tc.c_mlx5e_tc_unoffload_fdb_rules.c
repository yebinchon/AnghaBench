
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_tc_flow {int * rule; } ;
struct mlx5_eswitch {int dummy; } ;
struct mlx5_esw_flow_attr {scalar_t__ split_count; } ;


 int OFFLOADED ;
 int flow_flag_clear (struct mlx5e_tc_flow*,int ) ;
 int mlx5_eswitch_del_fwd_rule (struct mlx5_eswitch*,int ,struct mlx5_esw_flow_attr*) ;
 int mlx5_eswitch_del_offloaded_rule (struct mlx5_eswitch*,int ,struct mlx5_esw_flow_attr*) ;

__attribute__((used)) static void
mlx5e_tc_unoffload_fdb_rules(struct mlx5_eswitch *esw,
        struct mlx5e_tc_flow *flow,
      struct mlx5_esw_flow_attr *attr)
{
 flow_flag_clear(flow, OFFLOADED);

 if (attr->split_count)
  mlx5_eswitch_del_fwd_rule(esw, flow->rule[1], attr);

 mlx5_eswitch_del_offloaded_rule(esw, flow->rule[0], attr);
}
