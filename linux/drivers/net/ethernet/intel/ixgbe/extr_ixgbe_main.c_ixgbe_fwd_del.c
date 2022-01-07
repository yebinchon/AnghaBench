
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ixgbe_ring {int * netdev; struct ixgbe_q_vector* q_vector; } ;
struct ixgbe_q_vector {int napi; } ;
struct ixgbe_fwd_adapter {unsigned int rx_base_queue; int pool; TYPE_1__* netdev; } ;
struct ixgbe_adapter {unsigned int num_rx_queues_per_pool; int fwd_bitmask; int netdev; struct ixgbe_ring** rx_ring; } ;
struct TYPE_3__ {int dev_addr; } ;


 int VMDQ_P (int ) ;
 int clear_bit (int ,int ) ;
 int ixgbe_del_mac_filter (struct ixgbe_adapter*,int ,int ) ;
 int kfree (struct ixgbe_fwd_adapter*) ;
 int napi_synchronize (int *) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 int netdev_set_sb_channel (TYPE_1__*,int ) ;
 int netdev_unbind_sb_channel (struct net_device*,TYPE_1__*) ;
 scalar_t__ netif_running (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void ixgbe_fwd_del(struct net_device *pdev, void *priv)
{
 struct ixgbe_fwd_adapter *accel = priv;
 struct ixgbe_adapter *adapter = netdev_priv(pdev);
 unsigned int rxbase = accel->rx_base_queue;
 unsigned int i;


 ixgbe_del_mac_filter(adapter, accel->netdev->dev_addr,
        VMDQ_P(accel->pool));




 usleep_range(10000, 20000);

 for (i = 0; i < adapter->num_rx_queues_per_pool; i++) {
  struct ixgbe_ring *ring = adapter->rx_ring[rxbase + i];
  struct ixgbe_q_vector *qv = ring->q_vector;




  if (netif_running(adapter->netdev))
   napi_synchronize(&qv->napi);
  ring->netdev = ((void*)0);
 }


 netdev_unbind_sb_channel(pdev, accel->netdev);
 netdev_set_sb_channel(accel->netdev, 0);

 clear_bit(accel->pool, adapter->fwd_bitmask);
 kfree(accel);
}
