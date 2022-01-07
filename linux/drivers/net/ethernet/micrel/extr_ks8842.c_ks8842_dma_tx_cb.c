
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct ks8842_tx_dma_ctl {int * adesc; } ;
struct ks8842_adapter {struct ks8842_tx_dma_ctl dma_tx; } ;


 int netdev_dbg (struct net_device*,char*) ;
 struct ks8842_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static void ks8842_dma_tx_cb(void *data)
{
 struct net_device *netdev = data;
 struct ks8842_adapter *adapter = netdev_priv(netdev);
 struct ks8842_tx_dma_ctl *ctl = &adapter->dma_tx;

 netdev_dbg(netdev, "TX DMA finished\n");

 if (!ctl->adesc)
  return;

 netdev->stats.tx_packets++;
 ctl->adesc = ((void*)0);

 if (netif_queue_stopped(netdev))
  netif_wake_queue(netdev);
}
