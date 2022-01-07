
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tulip_private {scalar_t__ cur_rx; int dirty_rx; scalar_t__ chip_id; scalar_t__ base_addr; TYPE_2__* rx_ring; TYPE_1__* rx_buffers; TYPE_3__* pdev; } ;
struct sk_buff {int data; } ;
struct net_device {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {void* status; void* buffer1; } ;
struct TYPE_4__ {int mapping; struct sk_buff* skb; } ;


 scalar_t__ CSR2 ;
 scalar_t__ CSR5 ;
 int DescOwned ;
 scalar_t__ LC82C168 ;
 int PCI_DMA_FROMDEVICE ;
 int PKT_BUF_SZ ;
 int RX_RING_SIZE ;
 void* cpu_to_le32 (int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 scalar_t__ dma_mapping_error (int *,int ) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,int ) ;
 struct tulip_private* netdev_priv (struct net_device*) ;
 int pci_map_single (TYPE_3__*,int ,int ,int ) ;

int tulip_refill_rx(struct net_device *dev)
{
 struct tulip_private *tp = netdev_priv(dev);
 int entry;
 int refilled = 0;


 for (; tp->cur_rx - tp->dirty_rx > 0; tp->dirty_rx++) {
  entry = tp->dirty_rx % RX_RING_SIZE;
  if (tp->rx_buffers[entry].skb == ((void*)0)) {
   struct sk_buff *skb;
   dma_addr_t mapping;

   skb = tp->rx_buffers[entry].skb =
    netdev_alloc_skb(dev, PKT_BUF_SZ);
   if (skb == ((void*)0))
    break;

   mapping = pci_map_single(tp->pdev, skb->data, PKT_BUF_SZ,
       PCI_DMA_FROMDEVICE);
   if (dma_mapping_error(&tp->pdev->dev, mapping)) {
    dev_kfree_skb(skb);
    tp->rx_buffers[entry].skb = ((void*)0);
    break;
   }

   tp->rx_buffers[entry].mapping = mapping;

   tp->rx_ring[entry].buffer1 = cpu_to_le32(mapping);
   refilled++;
  }
  tp->rx_ring[entry].status = cpu_to_le32(DescOwned);
 }
 if(tp->chip_id == LC82C168) {
  if(((ioread32(tp->base_addr + CSR5)>>17)&0x07) == 4) {



   iowrite32(0x01, tp->base_addr + CSR2);
  }
 }
 return refilled;
}
