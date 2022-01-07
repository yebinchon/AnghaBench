
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct net_device {int dev_addr; } ;
struct ixgbe_fwd_adapter {int pool; int rx_base_queue; int tx_base_queue; struct net_device* netdev; } ;
struct ixgbe_adapter {int num_rx_queues_per_pool; int fwd_bitmask; int netdev; TYPE_2__** rx_ring; int num_rx_pools; TYPE_1__* ring_feature; } ;
struct TYPE_4__ {struct net_device* netdev; } ;
struct TYPE_3__ {int indices; } ;


 size_t RING_F_RSS ;
 int VMDQ_P (int) ;
 int clear_bit (int,int ) ;
 int ixgbe_add_mac_filter (struct ixgbe_adapter*,int ,int ) ;
 int kfree (struct ixgbe_fwd_adapter*) ;
 int macvlan_release_l2fw_offload (struct net_device*) ;
 int netdev_bind_sb_channel_queue (int ,struct net_device*,int,int,int) ;
 int netdev_dbg (struct net_device*,char*,int,int ,int,int) ;
 int netdev_err (struct net_device*,char*) ;
 int netdev_get_num_tc (int ) ;
 int netdev_set_sb_channel (struct net_device*,int ) ;
 int netdev_unbind_sb_channel (int ,struct net_device*) ;
 int wmb () ;

__attribute__((used)) static int ixgbe_fwd_ring_up(struct ixgbe_adapter *adapter,
        struct ixgbe_fwd_adapter *accel)
{
 u16 rss_i = adapter->ring_feature[RING_F_RSS].indices;
 int num_tc = netdev_get_num_tc(adapter->netdev);
 struct net_device *vdev = accel->netdev;
 int i, baseq, err;

 baseq = accel->pool * adapter->num_rx_queues_per_pool;
 netdev_dbg(vdev, "pool %i:%i queues %i:%i\n",
     accel->pool, adapter->num_rx_pools,
     baseq, baseq + adapter->num_rx_queues_per_pool);

 accel->rx_base_queue = baseq;
 accel->tx_base_queue = baseq;


 for (i = 0; i < num_tc; i++)
  netdev_bind_sb_channel_queue(adapter->netdev, vdev,
          i, rss_i, baseq + (rss_i * i));

 for (i = 0; i < adapter->num_rx_queues_per_pool; i++)
  adapter->rx_ring[baseq + i]->netdev = vdev;




 wmb();




 err = ixgbe_add_mac_filter(adapter, vdev->dev_addr,
       VMDQ_P(accel->pool));
 if (err >= 0)
  return 0;


 macvlan_release_l2fw_offload(vdev);

 for (i = 0; i < adapter->num_rx_queues_per_pool; i++)
  adapter->rx_ring[baseq + i]->netdev = ((void*)0);

 netdev_err(vdev, "L2FW offload disabled due to L2 filter error\n");


 netdev_unbind_sb_channel(adapter->netdev, vdev);
 netdev_set_sb_channel(vdev, 0);

 clear_bit(accel->pool, adapter->fwd_bitmask);
 kfree(accel);

 return err;
}
