
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_tc_flow {struct mlx5e_priv* priv; } ;
struct mlx5e_priv {int dummy; } ;


 int kfree (struct mlx5e_tc_flow*) ;
 int mlx5e_tc_del_flow (struct mlx5e_priv*,struct mlx5e_tc_flow*) ;

__attribute__((used)) static void _mlx5e_tc_del_flow(void *ptr, void *arg)
{
 struct mlx5e_tc_flow *flow = ptr;
 struct mlx5e_priv *priv = flow->priv;

 mlx5e_tc_del_flow(priv, flow);
 kfree(flow);
}
