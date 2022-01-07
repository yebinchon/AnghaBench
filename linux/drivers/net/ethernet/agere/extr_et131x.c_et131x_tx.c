
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tx_ring {int used; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct et131x_adapter {int flags; TYPE_2__* netdev; struct tx_ring tx_ring; } ;
typedef int netdev_tx_t ;
struct TYPE_3__ {int tx_dropped; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;


 int FMP_ADAPTER_FAIL_SEND_MASK ;
 int NETDEV_TX_OK ;
 int NUM_TCB ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 struct et131x_adapter* netdev_priv (struct net_device*) ;
 int netif_carrier_ok (struct net_device*) ;
 int netif_queue_stopped (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_trans_update (struct net_device*) ;
 scalar_t__ send_packet (struct sk_buff*,struct et131x_adapter*) ;

__attribute__((used)) static netdev_tx_t et131x_tx(struct sk_buff *skb, struct net_device *netdev)
{
 struct et131x_adapter *adapter = netdev_priv(netdev);
 struct tx_ring *tx_ring = &adapter->tx_ring;


 if (tx_ring->used >= NUM_TCB - 1 && !netif_queue_stopped(netdev))
  netif_stop_queue(netdev);


 netif_trans_update(netdev);


 if (tx_ring->used >= NUM_TCB)
  goto drop_err;

 if ((adapter->flags & FMP_ADAPTER_FAIL_SEND_MASK) ||
     !netif_carrier_ok(netdev))
  goto drop_err;

 if (send_packet(skb, adapter))
  goto drop_err;

 return NETDEV_TX_OK;

drop_err:
 dev_kfree_skb_any(skb);
 adapter->netdev->stats.tx_dropped++;
 return NETDEV_TX_OK;
}
