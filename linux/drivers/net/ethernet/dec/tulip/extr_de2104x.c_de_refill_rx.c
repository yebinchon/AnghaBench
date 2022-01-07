
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int data; } ;
struct de_private {int rx_buf_sz; TYPE_2__* rx_ring; TYPE_1__* rx_skb; int pdev; int dev; } ;
struct TYPE_4__ {scalar_t__ addr2; void* addr1; void* opts2; void* opts1; } ;
struct TYPE_3__ {int mapping; struct sk_buff* skb; } ;


 unsigned int DE_RX_RING_SIZE ;
 int DescOwn ;
 int ENOMEM ;
 int PCI_DMA_FROMDEVICE ;
 int RingEnd ;
 void* cpu_to_le32 (int) ;
 int de_clean_rings (struct de_private*) ;
 struct sk_buff* netdev_alloc_skb (int ,int) ;
 int pci_map_single (int ,int ,int,int ) ;

__attribute__((used)) static int de_refill_rx (struct de_private *de)
{
 unsigned i;

 for (i = 0; i < DE_RX_RING_SIZE; i++) {
  struct sk_buff *skb;

  skb = netdev_alloc_skb(de->dev, de->rx_buf_sz);
  if (!skb)
   goto err_out;

  de->rx_skb[i].mapping = pci_map_single(de->pdev,
   skb->data, de->rx_buf_sz, PCI_DMA_FROMDEVICE);
  de->rx_skb[i].skb = skb;

  de->rx_ring[i].opts1 = cpu_to_le32(DescOwn);
  if (i == (DE_RX_RING_SIZE - 1))
   de->rx_ring[i].opts2 =
    cpu_to_le32(RingEnd | de->rx_buf_sz);
  else
   de->rx_ring[i].opts2 = cpu_to_le32(de->rx_buf_sz);
  de->rx_ring[i].addr1 = cpu_to_le32(de->rx_skb[i].mapping);
  de->rx_ring[i].addr2 = 0;
 }

 return 0;

err_out:
 de_clean_rings(de);
 return -ENOMEM;
}
