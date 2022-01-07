
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int tasklet; scalar_t__ adesc; } ;
struct ks8842_adapter {TYPE_1__ dma_rx; } ;


 int netdev_dbg (struct net_device*,char*) ;
 struct ks8842_adapter* netdev_priv (struct net_device*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void ks8842_dma_rx_cb(void *data)
{
 struct net_device *netdev = data;
 struct ks8842_adapter *adapter = netdev_priv(netdev);

 netdev_dbg(netdev, "RX DMA finished\n");

 if (adapter->dma_rx.adesc)
  tasklet_schedule(&adapter->dma_rx.tasklet);
}
