
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rhashtable {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct mlx5e_tc_flow {int node; } ;
struct mlx5e_priv {int netdev; } ;
struct TYPE_2__ {struct netlink_ext_ack* extack; } ;
struct flow_cls_offload {int cookie; TYPE_1__ common; } ;


 int EEXIST ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 struct rhashtable* get_tc_ht (struct mlx5e_priv*,unsigned long) ;
 int mlx5e_flow_put (struct mlx5e_priv*,struct mlx5e_tc_flow*) ;
 int mlx5e_tc_add_flow (struct mlx5e_priv*,struct flow_cls_offload*,unsigned long,struct net_device*,struct mlx5e_tc_flow**) ;
 int netdev_warn_once (int ,char*,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct mlx5e_tc_flow* rhashtable_lookup (struct rhashtable*,int *,int ) ;
 int rhashtable_lookup_insert_fast (struct rhashtable*,int *,int ) ;
 int tc_ht_params ;
 int trace_mlx5e_configure_flower (struct flow_cls_offload*) ;

int mlx5e_configure_flower(struct net_device *dev, struct mlx5e_priv *priv,
      struct flow_cls_offload *f, unsigned long flags)
{
 struct netlink_ext_ack *extack = f->common.extack;
 struct rhashtable *tc_ht = get_tc_ht(priv, flags);
 struct mlx5e_tc_flow *flow;
 int err = 0;

 rcu_read_lock();
 flow = rhashtable_lookup(tc_ht, &f->cookie, tc_ht_params);
 rcu_read_unlock();
 if (flow) {
  NL_SET_ERR_MSG_MOD(extack,
       "flow cookie already exists, ignoring");
  netdev_warn_once(priv->netdev,
     "flow cookie %lx already exists, ignoring\n",
     f->cookie);
  err = -EEXIST;
  goto out;
 }

 trace_mlx5e_configure_flower(f);
 err = mlx5e_tc_add_flow(priv, f, flags, dev, &flow);
 if (err)
  goto out;

 err = rhashtable_lookup_insert_fast(tc_ht, &flow->node, tc_ht_params);
 if (err)
  goto err_free;

 return 0;

err_free:
 mlx5e_flow_put(priv, flow);
out:
 return err;
}
