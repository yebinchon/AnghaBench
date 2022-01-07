
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rhine_private {int ** tx_buf; TYPE_3__** tx_skbuff; scalar_t__* tx_skbuff_dma; TYPE_2__* tx_ring; } ;
struct TYPE_4__ {struct device* parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int len; } ;
struct TYPE_5__ {void* addr; void* desc_length; scalar_t__ tx_status; } ;


 int DMA_TO_DEVICE ;
 int TXDESC ;
 int TX_RING_SIZE ;
 void* cpu_to_le32 (int) ;
 int dev_kfree_skb (TYPE_3__*) ;
 int dma_unmap_single (struct device*,scalar_t__,int ,int ) ;
 struct rhine_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void free_tbufs(struct net_device* dev)
{
 struct rhine_private *rp = netdev_priv(dev);
 struct device *hwdev = dev->dev.parent;
 int i;

 for (i = 0; i < TX_RING_SIZE; i++) {
  rp->tx_ring[i].tx_status = 0;
  rp->tx_ring[i].desc_length = cpu_to_le32(TXDESC);
  rp->tx_ring[i].addr = cpu_to_le32(0xBADF00D0);
  if (rp->tx_skbuff[i]) {
   if (rp->tx_skbuff_dma[i]) {
    dma_unmap_single(hwdev,
       rp->tx_skbuff_dma[i],
       rp->tx_skbuff[i]->len,
       DMA_TO_DEVICE);
   }
   dev_kfree_skb(rp->tx_skbuff[i]);
  }
  rp->tx_skbuff[i] = ((void*)0);
  rp->tx_buf[i] = ((void*)0);
 }
}
