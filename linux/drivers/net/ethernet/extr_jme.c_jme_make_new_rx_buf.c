
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int data; } ;
struct jme_ring {struct jme_buffer_info* bufinf; } ;
struct jme_buffer_info {int mapping; int len; struct sk_buff* skb; } ;
struct jme_adapter {int pdev; TYPE_1__* dev; struct jme_ring* rxring; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {scalar_t__ mtu; } ;


 int ENOMEM ;
 int PCI_DMA_FROMDEVICE ;
 scalar_t__ RX_EXTRA_LEN ;
 int dev_kfree_skb (struct sk_buff*) ;
 scalar_t__ likely (int ) ;
 struct sk_buff* netdev_alloc_skb (TYPE_1__*,scalar_t__) ;
 int offset_in_page (int ) ;
 int pci_dma_mapping_error (int ,int ) ;
 int pci_map_page (int ,int ,int ,int ,int ) ;
 int pci_unmap_page (int ,int ,int ,int ) ;
 int skb_tailroom (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;
 int virt_to_page (int ) ;

__attribute__((used)) static int
jme_make_new_rx_buf(struct jme_adapter *jme, int i)
{
 struct jme_ring *rxring = &(jme->rxring[0]);
 struct jme_buffer_info *rxbi = rxring->bufinf + i;
 struct sk_buff *skb;
 dma_addr_t mapping;

 skb = netdev_alloc_skb(jme->dev,
  jme->dev->mtu + RX_EXTRA_LEN);
 if (unlikely(!skb))
  return -ENOMEM;

 mapping = pci_map_page(jme->pdev, virt_to_page(skb->data),
          offset_in_page(skb->data), skb_tailroom(skb),
          PCI_DMA_FROMDEVICE);
 if (unlikely(pci_dma_mapping_error(jme->pdev, mapping))) {
  dev_kfree_skb(skb);
  return -ENOMEM;
 }

 if (likely(rxbi->mapping))
  pci_unmap_page(jme->pdev, rxbi->mapping,
          rxbi->len, PCI_DMA_FROMDEVICE);

 rxbi->skb = skb;
 rxbi->len = skb_tailroom(skb);
 rxbi->mapping = mapping;
 return 0;
}
