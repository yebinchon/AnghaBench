
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ixgbe_fwd_adapter {int pool; } ;
struct ixgbe_adapter {int num_rx_pools; int netdev; int fwd_bitmask; } ;


 int find_first_zero_bit (int ,int) ;
 int kfree (struct ixgbe_fwd_adapter*) ;
 struct ixgbe_fwd_adapter* macvlan_accel_priv (struct net_device*) ;
 int macvlan_release_l2fw_offload (struct net_device*) ;
 int netdev_err (struct net_device*,char*) ;
 int netdev_set_sb_channel (struct net_device*,int ) ;
 int netdev_unbind_sb_channel (int ,struct net_device*) ;
 int netif_is_macvlan (struct net_device*) ;
 int set_bit (int,int ) ;

__attribute__((used)) static int ixgbe_reassign_macvlan_pool(struct net_device *vdev, void *data)
{
 struct ixgbe_adapter *adapter = data;
 struct ixgbe_fwd_adapter *accel;
 int pool;


 if (!netif_is_macvlan(vdev))
  return 0;


 accel = macvlan_accel_priv(vdev);
 if (!accel)
  return 0;


 pool = find_first_zero_bit(adapter->fwd_bitmask, adapter->num_rx_pools);
 if (pool < adapter->num_rx_pools) {
  set_bit(pool, adapter->fwd_bitmask);
  accel->pool = pool;
  return 0;
 }


 netdev_err(vdev, "L2FW offload disabled due to lack of queue resources\n");
 macvlan_release_l2fw_offload(vdev);


 netdev_unbind_sb_channel(adapter->netdev, vdev);
 netdev_set_sb_channel(vdev, 0);

 kfree(accel);

 return 0;
}
