
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int data; } ;
struct sis190_private {int pci_dev; int rx_buf_sz; int dev; } ;
struct RxDesc {int dummy; } ;
typedef int dma_addr_t ;


 int PCI_DMA_FROMDEVICE ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 struct sk_buff* netdev_alloc_skb (int ,int ) ;
 scalar_t__ pci_dma_mapping_error (int ,int ) ;
 int pci_map_single (int ,int ,int ,int ) ;
 int sis190_make_unusable_by_asic (struct RxDesc*) ;
 int sis190_map_to_asic (struct RxDesc*,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *sis190_alloc_rx_skb(struct sis190_private *tp,
        struct RxDesc *desc)
{
 u32 rx_buf_sz = tp->rx_buf_sz;
 struct sk_buff *skb;
 dma_addr_t mapping;

 skb = netdev_alloc_skb(tp->dev, rx_buf_sz);
 if (unlikely(!skb))
  goto skb_alloc_failed;
 mapping = pci_map_single(tp->pci_dev, skb->data, tp->rx_buf_sz,
   PCI_DMA_FROMDEVICE);
 if (pci_dma_mapping_error(tp->pci_dev, mapping))
  goto out;
 sis190_map_to_asic(desc, mapping, rx_buf_sz);

 return skb;

out:
 dev_kfree_skb_any(skb);
skb_alloc_failed:
 sis190_make_unusable_by_asic(desc);
 return ((void*)0);
}
