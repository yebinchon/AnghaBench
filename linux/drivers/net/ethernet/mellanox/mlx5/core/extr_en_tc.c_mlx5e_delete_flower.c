
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rhashtable {int dummy; } ;
struct net_device {int dummy; } ;
struct mlx5e_tc_flow {int node; } ;
struct mlx5e_priv {int dummy; } ;
struct flow_cls_offload {int cookie; } ;


 int DELETED ;
 int EINVAL ;
 scalar_t__ flow_flag_test_and_set (struct mlx5e_tc_flow*,int ) ;
 struct rhashtable* get_tc_ht (struct mlx5e_priv*,unsigned long) ;
 int mlx5e_flow_put (struct mlx5e_priv*,struct mlx5e_tc_flow*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct mlx5e_tc_flow* rhashtable_lookup_fast (struct rhashtable*,int *,int ) ;
 int rhashtable_remove_fast (struct rhashtable*,int *,int ) ;
 int same_flow_direction (struct mlx5e_tc_flow*,unsigned long) ;
 int tc_ht_params ;
 int trace_mlx5e_delete_flower (struct flow_cls_offload*) ;

int mlx5e_delete_flower(struct net_device *dev, struct mlx5e_priv *priv,
   struct flow_cls_offload *f, unsigned long flags)
{
 struct rhashtable *tc_ht = get_tc_ht(priv, flags);
 struct mlx5e_tc_flow *flow;
 int err;

 rcu_read_lock();
 flow = rhashtable_lookup_fast(tc_ht, &f->cookie, tc_ht_params);
 if (!flow || !same_flow_direction(flow, flags)) {
  err = -EINVAL;
  goto errout;
 }




 if (flow_flag_test_and_set(flow, DELETED)) {
  err = -EINVAL;
  goto errout;
 }
 rhashtable_remove_fast(tc_ht, &flow->node, tc_ht_params);
 rcu_read_unlock();

 trace_mlx5e_delete_flower(f);
 mlx5e_flow_put(priv, flow);

 return 0;

errout:
 rcu_read_unlock();
 return err;
}
