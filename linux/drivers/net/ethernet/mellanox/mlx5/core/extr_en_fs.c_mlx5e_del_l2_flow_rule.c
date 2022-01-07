
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int dummy; } ;
struct mlx5e_l2_rule {int * rule; } ;


 int IS_ERR_OR_NULL (int *) ;
 int mlx5_del_flow_rules (int *) ;

__attribute__((used)) static void mlx5e_del_l2_flow_rule(struct mlx5e_priv *priv,
       struct mlx5e_l2_rule *ai)
{
 if (!IS_ERR_OR_NULL(ai->rule)) {
  mlx5_del_flow_rules(ai->rule);
  ai->rule = ((void*)0);
 }
}
