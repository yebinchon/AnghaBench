
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_flow_handle {int dummy; } ;


 int mlx5_del_flow_rules (struct mlx5_flow_handle*) ;

void mlx5_eswitch_del_send_to_vport_rule(struct mlx5_flow_handle *rule)
{
 mlx5_del_flow_rules(rule);
}
