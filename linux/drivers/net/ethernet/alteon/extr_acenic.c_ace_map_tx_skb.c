
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tx_ring_info {struct sk_buff* skb; } ;
struct sk_buff {int len; int data; } ;
struct ace_private {TYPE_1__* skb; int pdev; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {struct tx_ring_info* tx_skbuff; } ;


 int PCI_DMA_TODEVICE ;
 int dma_unmap_addr_set (struct tx_ring_info*,int ,int ) ;
 int dma_unmap_len_set (struct tx_ring_info*,int ,int ) ;
 int maplen ;
 int offset_in_page (int ) ;
 int pci_map_page (int ,int ,int ,int ,int ) ;
 int virt_to_page (int ) ;

__attribute__((used)) static inline dma_addr_t
ace_map_tx_skb(struct ace_private *ap, struct sk_buff *skb,
        struct sk_buff *tail, u32 idx)
{
 dma_addr_t mapping;
 struct tx_ring_info *info;

 mapping = pci_map_page(ap->pdev, virt_to_page(skb->data),
          offset_in_page(skb->data),
          skb->len, PCI_DMA_TODEVICE);

 info = ap->skb->tx_skbuff + idx;
 info->skb = tail;
 dma_unmap_addr_set(info, mapping, mapping);
 dma_unmap_len_set(info, maplen, skb->len);
 return mapping;
}
