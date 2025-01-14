
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mlx5e_priv {int netdev; TYPE_2__* mdev; } ;
struct mlx5_eswitch {int dummy; } ;
struct TYPE_3__ {struct mlx5_eswitch* eswitch; } ;
struct TYPE_4__ {TYPE_1__ priv; } ;


 int EOPNOTSUPP ;
 int REP_ETH ;
 int dev_hold (struct net_device*) ;
 int dev_put (struct net_device*) ;
 scalar_t__ is_vlan_dev (struct net_device*) ;
 struct net_device* mlx5_eswitch_uplink_get_proto_dev (struct mlx5_eswitch*,int ) ;
 scalar_t__ mlx5_lag_is_sriov (TYPE_2__*) ;
 scalar_t__ mlx5e_eswitch_rep (struct net_device*) ;
 scalar_t__ mlx5e_is_uplink_rep (int ) ;
 scalar_t__ mlx5e_is_valid_eswitch_fwd_dev (struct mlx5e_priv*,struct net_device*) ;
 struct net_device* netdev_master_upper_dev_get_rcu (struct net_device*) ;
 int netdev_port_same_parent_id (int ,struct net_device*) ;
 int netdev_priv (struct net_device*) ;
 scalar_t__ netif_is_lag_master (struct net_device*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct net_device* vlan_dev_real_dev (struct net_device*) ;

__attribute__((used)) static int get_route_and_out_devs(struct mlx5e_priv *priv,
      struct net_device *dev,
      struct net_device **route_dev,
      struct net_device **out_dev)
{
 struct net_device *uplink_dev, *uplink_upper, *real_dev;
 struct mlx5_eswitch *esw = priv->mdev->priv.eswitch;
 bool dst_is_lag_dev;

 real_dev = is_vlan_dev(dev) ? vlan_dev_real_dev(dev) : dev;
 uplink_dev = mlx5_eswitch_uplink_get_proto_dev(esw, REP_ETH);

 rcu_read_lock();
 uplink_upper = netdev_master_upper_dev_get_rcu(uplink_dev);




 if (uplink_upper)
  dev_hold(uplink_upper);
 rcu_read_unlock();

 dst_is_lag_dev = (uplink_upper &&
     netif_is_lag_master(uplink_upper) &&
     real_dev == uplink_upper &&
     mlx5_lag_is_sriov(priv->mdev));
 if (uplink_upper)
  dev_put(uplink_upper);




 *route_dev = dev;
 if (!netdev_port_same_parent_id(priv->netdev, real_dev) ||
     dst_is_lag_dev || is_vlan_dev(*route_dev))
  *out_dev = uplink_dev;
 else if (mlx5e_eswitch_rep(dev) &&
   mlx5e_is_valid_eswitch_fwd_dev(priv, dev))
  *out_dev = *route_dev;
 else
  return -EOPNOTSUPP;

 if (!(mlx5e_eswitch_rep(*out_dev) &&
       mlx5e_is_uplink_rep(netdev_priv(*out_dev))))
  return -EOPNOTSUPP;

 return 0;
}
