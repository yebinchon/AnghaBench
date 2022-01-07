
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skb_shared_info {size_t nr_frags; int * frags; } ;
struct sk_buff {int data; } ;
struct pci_dev {int dev; } ;
typedef int skb_frag_t ;
typedef int dma_addr_t ;


 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int PCI_DMA_TODEVICE ;
 int dma_unmap_page (int *,int ,int ,int ) ;
 scalar_t__ pci_dma_mapping_error (struct pci_dev*,int ) ;
 int pci_map_single (struct pci_dev*,int ,scalar_t__,int ) ;
 int pci_unmap_single (struct pci_dev*,int ,scalar_t__,int ) ;
 int skb_frag_dma_map (int *,int const*,int ,int ,int ) ;
 int skb_frag_size (int const*) ;
 scalar_t__ skb_headlen (struct sk_buff const*) ;
 struct skb_shared_info* skb_shinfo (struct sk_buff const*) ;

__attribute__((used)) static int map_skb(struct pci_dev *pdev, const struct sk_buff *skb,
     dma_addr_t *addr)
{
 const skb_frag_t *fp, *end;
 const struct skb_shared_info *si;

 if (skb_headlen(skb)) {
  *addr = pci_map_single(pdev, skb->data, skb_headlen(skb),
           PCI_DMA_TODEVICE);
  if (pci_dma_mapping_error(pdev, *addr))
   goto out_err;
  addr++;
 }

 si = skb_shinfo(skb);
 end = &si->frags[si->nr_frags];

 for (fp = si->frags; fp < end; fp++) {
  *addr = skb_frag_dma_map(&pdev->dev, fp, 0, skb_frag_size(fp),
      DMA_TO_DEVICE);
  if (pci_dma_mapping_error(pdev, *addr))
   goto unwind;
  addr++;
 }
 return 0;

unwind:
 while (fp-- > si->frags)
  dma_unmap_page(&pdev->dev, *--addr, skb_frag_size(fp),
          DMA_TO_DEVICE);

 pci_unmap_single(pdev, addr[-1], skb_headlen(skb), PCI_DMA_TODEVICE);
out_err:
 return -ENOMEM;
}
