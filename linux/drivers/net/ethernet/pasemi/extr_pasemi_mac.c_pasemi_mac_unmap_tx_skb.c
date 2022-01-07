
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct pci_dev {int dummy; } ;
struct pasemi_mac {struct pci_dev* dma_pdev; } ;
typedef int skb_frag_t ;
typedef int dma_addr_t ;
struct TYPE_2__ {int * frags; } ;


 int PCI_DMA_TODEVICE ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 int pci_unmap_page (struct pci_dev*,int const,int ,int ) ;
 int pci_unmap_single (struct pci_dev*,int const,int ,int ) ;
 int skb_frag_size (int const*) ;
 int skb_headlen (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static int pasemi_mac_unmap_tx_skb(struct pasemi_mac *mac,
        const int nfrags,
        struct sk_buff *skb,
        const dma_addr_t *dmas)
{
 int f;
 struct pci_dev *pdev = mac->dma_pdev;

 pci_unmap_single(pdev, dmas[0], skb_headlen(skb), PCI_DMA_TODEVICE);

 for (f = 0; f < nfrags; f++) {
  const skb_frag_t *frag = &skb_shinfo(skb)->frags[f];

  pci_unmap_page(pdev, dmas[f+1], skb_frag_size(frag), PCI_DMA_TODEVICE);
 }
 dev_kfree_skb_irq(skb);




 return (nfrags + 3) & ~1;
}
