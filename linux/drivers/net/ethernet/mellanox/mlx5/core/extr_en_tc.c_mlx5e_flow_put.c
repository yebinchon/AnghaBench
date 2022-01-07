
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_tc_flow {int refcnt; } ;
struct mlx5e_priv {int dummy; } ;


 int kfree_rcu (struct mlx5e_tc_flow*,int ) ;
 int mlx5e_tc_del_flow (struct mlx5e_priv*,struct mlx5e_tc_flow*) ;
 int rcu_head ;
 scalar_t__ refcount_dec_and_test (int *) ;

__attribute__((used)) static void mlx5e_flow_put(struct mlx5e_priv *priv,
      struct mlx5e_tc_flow *flow)
{
 if (refcount_dec_and_test(&flow->refcnt)) {
  mlx5e_tc_del_flow(priv, flow);
  kfree_rcu(flow, rcu_head);
 }
}
