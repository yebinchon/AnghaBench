
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int data; } ;
struct net_device {int dummy; } ;
struct cp_private {int rx_buf_sz; TYPE_2__* rx_ring; struct sk_buff** rx_skb; TYPE_1__* pdev; struct net_device* dev; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {void* opts1; int addr; scalar_t__ opts2; } ;
struct TYPE_3__ {int dev; } ;


 unsigned int CP_RX_RING_SIZE ;
 int DescOwn ;
 int ENOMEM ;
 int PCI_DMA_FROMDEVICE ;
 int RingEnd ;
 int cp_clean_rings (struct cp_private*) ;
 void* cpu_to_le32 (int) ;
 int cpu_to_le64 (int ) ;
 int dma_map_single (int *,int ,int,int ) ;
 scalar_t__ dma_mapping_error (int *,int ) ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* netdev_alloc_skb_ip_align (struct net_device*,int) ;

__attribute__((used)) static int cp_refill_rx(struct cp_private *cp)
{
 struct net_device *dev = cp->dev;
 unsigned i;

 for (i = 0; i < CP_RX_RING_SIZE; i++) {
  struct sk_buff *skb;
  dma_addr_t mapping;

  skb = netdev_alloc_skb_ip_align(dev, cp->rx_buf_sz);
  if (!skb)
   goto err_out;

  mapping = dma_map_single(&cp->pdev->dev, skb->data,
      cp->rx_buf_sz, PCI_DMA_FROMDEVICE);
  if (dma_mapping_error(&cp->pdev->dev, mapping)) {
   kfree_skb(skb);
   goto err_out;
  }
  cp->rx_skb[i] = skb;

  cp->rx_ring[i].opts2 = 0;
  cp->rx_ring[i].addr = cpu_to_le64(mapping);
  if (i == (CP_RX_RING_SIZE - 1))
   cp->rx_ring[i].opts1 =
    cpu_to_le32(DescOwn | RingEnd | cp->rx_buf_sz);
  else
   cp->rx_ring[i].opts1 =
    cpu_to_le32(DescOwn | cp->rx_buf_sz);
 }

 return 0;

err_out:
 cp_clean_rings(cp);
 return -ENOMEM;
}
