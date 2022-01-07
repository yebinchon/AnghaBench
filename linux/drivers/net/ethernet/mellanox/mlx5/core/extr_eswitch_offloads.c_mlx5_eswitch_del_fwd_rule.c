
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_flow_handle {int dummy; } ;
struct mlx5_eswitch {int dummy; } ;
struct mlx5_esw_flow_attr {int dummy; } ;


 int __mlx5_eswitch_del_rule (struct mlx5_eswitch*,struct mlx5_flow_handle*,struct mlx5_esw_flow_attr*,int) ;

void
mlx5_eswitch_del_fwd_rule(struct mlx5_eswitch *esw,
     struct mlx5_flow_handle *rule,
     struct mlx5_esw_flow_attr *attr)
{
 __mlx5_eswitch_del_rule(esw, rule, attr, 1);
}
