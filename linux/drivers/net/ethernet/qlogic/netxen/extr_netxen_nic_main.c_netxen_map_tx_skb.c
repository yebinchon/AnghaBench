
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int data; } ;
struct pci_dev {int dev; } ;
struct netxen_skb_frag {unsigned long long dma; int length; } ;
struct netxen_cmd_buffer {struct netxen_skb_frag* frag_array; } ;
typedef int skb_frag_t ;
typedef void* dma_addr_t ;
struct TYPE_2__ {int nr_frags; int * frags; } ;


 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int PCI_DMA_TODEVICE ;
 scalar_t__ dma_mapping_error (int *,void*) ;
 scalar_t__ pci_dma_mapping_error (struct pci_dev*,void*) ;
 void* pci_map_single (struct pci_dev*,int ,int ,int ) ;
 int pci_unmap_page (struct pci_dev*,unsigned long long,int ,int ) ;
 int pci_unmap_single (struct pci_dev*,unsigned long long,int ,int ) ;
 void* skb_frag_dma_map (int *,int *,int ,int ,int ) ;
 int skb_frag_size (int *) ;
 int skb_headlen (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static int
netxen_map_tx_skb(struct pci_dev *pdev,
  struct sk_buff *skb, struct netxen_cmd_buffer *pbuf)
{
 struct netxen_skb_frag *nf;
 skb_frag_t *frag;
 int i, nr_frags;
 dma_addr_t map;

 nr_frags = skb_shinfo(skb)->nr_frags;
 nf = &pbuf->frag_array[0];

 map = pci_map_single(pdev, skb->data,
   skb_headlen(skb), PCI_DMA_TODEVICE);
 if (pci_dma_mapping_error(pdev, map))
  goto out_err;

 nf->dma = map;
 nf->length = skb_headlen(skb);

 for (i = 0; i < nr_frags; i++) {
  frag = &skb_shinfo(skb)->frags[i];
  nf = &pbuf->frag_array[i+1];

  map = skb_frag_dma_map(&pdev->dev, frag, 0, skb_frag_size(frag),
           DMA_TO_DEVICE);
  if (dma_mapping_error(&pdev->dev, map))
   goto unwind;

  nf->dma = map;
  nf->length = skb_frag_size(frag);
 }

 return 0;

unwind:
 while (--i >= 0) {
  nf = &pbuf->frag_array[i+1];
  pci_unmap_page(pdev, nf->dma, nf->length, PCI_DMA_TODEVICE);
  nf->dma = 0ULL;
 }

 nf = &pbuf->frag_array[0];
 pci_unmap_single(pdev, nf->dma, skb_headlen(skb), PCI_DMA_TODEVICE);
 nf->dma = 0ULL;

out_err:
 return -ENOMEM;
}
