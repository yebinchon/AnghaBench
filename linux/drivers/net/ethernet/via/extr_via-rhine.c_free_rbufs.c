
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rhine_private {int ** rx_skbuff; int rx_buf_sz; int * rx_skbuff_dma; TYPE_1__* rx_ring; } ;
struct TYPE_4__ {struct device* parent; } ;
struct net_device {TYPE_2__ dev; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int addr; scalar_t__ rx_status; } ;


 int DMA_FROM_DEVICE ;
 int RX_RING_SIZE ;
 int cpu_to_le32 (int) ;
 int dev_kfree_skb (int *) ;
 int dma_unmap_single (struct device*,int ,int ,int ) ;
 struct rhine_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void free_rbufs(struct net_device* dev)
{
 struct rhine_private *rp = netdev_priv(dev);
 struct device *hwdev = dev->dev.parent;
 int i;


 for (i = 0; i < RX_RING_SIZE; i++) {
  rp->rx_ring[i].rx_status = 0;
  rp->rx_ring[i].addr = cpu_to_le32(0xBADF00D0);
  if (rp->rx_skbuff[i]) {
   dma_unmap_single(hwdev,
      rp->rx_skbuff_dma[i],
      rp->rx_buf_sz, DMA_FROM_DEVICE);
   dev_kfree_skb(rp->rx_skbuff[i]);
  }
  rp->rx_skbuff[i] = ((void*)0);
 }
}
