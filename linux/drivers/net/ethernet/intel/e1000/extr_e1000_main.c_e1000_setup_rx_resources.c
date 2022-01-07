
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct e1000_rx_ring {int count; int size; void* desc; int * rx_skb_top; scalar_t__ next_to_use; scalar_t__ next_to_clean; int dma; int buffer_info; } ;
struct e1000_rx_desc {int dummy; } ;
struct e1000_rx_buffer {int dummy; } ;
struct e1000_adapter {struct pci_dev* pdev; } ;
typedef int dma_addr_t ;


 int ALIGN (int,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* dma_alloc_coherent (int *,int,int *,int ) ;
 int dma_free_coherent (int *,int,void*,int ) ;
 int e1000_check_64k_bound (struct e1000_adapter*,void*,int) ;
 int e_err (int ,char*,...) ;
 int memset (void*,int ,int) ;
 int probe ;
 int rx_err ;
 int vfree (int ) ;
 int vzalloc (int) ;

__attribute__((used)) static int e1000_setup_rx_resources(struct e1000_adapter *adapter,
        struct e1000_rx_ring *rxdr)
{
 struct pci_dev *pdev = adapter->pdev;
 int size, desc_len;

 size = sizeof(struct e1000_rx_buffer) * rxdr->count;
 rxdr->buffer_info = vzalloc(size);
 if (!rxdr->buffer_info)
  return -ENOMEM;

 desc_len = sizeof(struct e1000_rx_desc);



 rxdr->size = rxdr->count * desc_len;
 rxdr->size = ALIGN(rxdr->size, 4096);

 rxdr->desc = dma_alloc_coherent(&pdev->dev, rxdr->size, &rxdr->dma,
     GFP_KERNEL);
 if (!rxdr->desc) {
setup_rx_desc_die:
  vfree(rxdr->buffer_info);
  return -ENOMEM;
 }


 if (!e1000_check_64k_bound(adapter, rxdr->desc, rxdr->size)) {
  void *olddesc = rxdr->desc;
  dma_addr_t olddma = rxdr->dma;
  e_err(rx_err, "rxdr align check failed: %u bytes at %p\n",
        rxdr->size, rxdr->desc);

  rxdr->desc = dma_alloc_coherent(&pdev->dev, rxdr->size,
      &rxdr->dma, GFP_KERNEL);

  if (!rxdr->desc) {
   dma_free_coherent(&pdev->dev, rxdr->size, olddesc,
       olddma);
   goto setup_rx_desc_die;
  }

  if (!e1000_check_64k_bound(adapter, rxdr->desc, rxdr->size)) {

   dma_free_coherent(&pdev->dev, rxdr->size, rxdr->desc,
       rxdr->dma);
   dma_free_coherent(&pdev->dev, rxdr->size, olddesc,
       olddma);
   e_err(probe, "Unable to allocate aligned memory for "
         "the Rx descriptor ring\n");
   goto setup_rx_desc_die;
  } else {

   dma_free_coherent(&pdev->dev, rxdr->size, olddesc,
       olddma);
  }
 }
 memset(rxdr->desc, 0, rxdr->size);

 rxdr->next_to_clean = 0;
 rxdr->next_to_use = 0;
 rxdr->rx_skb_top = ((void*)0);

 return 0;
}
