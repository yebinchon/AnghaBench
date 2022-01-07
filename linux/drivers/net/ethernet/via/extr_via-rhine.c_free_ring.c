
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tx_desc {int dummy; } ;
struct rx_desc {int dummy; } ;
struct rhine_private {int * tx_bufs; int tx_bufs_dma; int * tx_ring; int rx_ring_dma; int * rx_ring; } ;
struct TYPE_2__ {struct device* parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct device {int dummy; } ;


 int PKT_BUF_SZ ;
 int RX_RING_SIZE ;
 int TX_RING_SIZE ;
 int dma_free_coherent (struct device*,int,int *,int ) ;
 struct rhine_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void free_ring(struct net_device* dev)
{
 struct rhine_private *rp = netdev_priv(dev);
 struct device *hwdev = dev->dev.parent;

 dma_free_coherent(hwdev,
     RX_RING_SIZE * sizeof(struct rx_desc) +
     TX_RING_SIZE * sizeof(struct tx_desc),
     rp->rx_ring, rp->rx_ring_dma);
 rp->tx_ring = ((void*)0);

 if (rp->tx_bufs)
  dma_free_coherent(hwdev, PKT_BUF_SZ * TX_RING_SIZE,
      rp->tx_bufs, rp->tx_bufs_dma);

 rp->tx_bufs = ((void*)0);

}
