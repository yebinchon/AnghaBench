
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct e1000_tx_ring {int count; int size; void* desc; scalar_t__ next_to_clean; scalar_t__ next_to_use; int buffer_info; int dma; } ;
struct e1000_tx_desc {int dummy; } ;
struct e1000_tx_buffer {int dummy; } ;
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
 int tx_err ;
 int vfree (int ) ;
 int vzalloc (int) ;

__attribute__((used)) static int e1000_setup_tx_resources(struct e1000_adapter *adapter,
        struct e1000_tx_ring *txdr)
{
 struct pci_dev *pdev = adapter->pdev;
 int size;

 size = sizeof(struct e1000_tx_buffer) * txdr->count;
 txdr->buffer_info = vzalloc(size);
 if (!txdr->buffer_info)
  return -ENOMEM;



 txdr->size = txdr->count * sizeof(struct e1000_tx_desc);
 txdr->size = ALIGN(txdr->size, 4096);

 txdr->desc = dma_alloc_coherent(&pdev->dev, txdr->size, &txdr->dma,
     GFP_KERNEL);
 if (!txdr->desc) {
setup_tx_desc_die:
  vfree(txdr->buffer_info);
  return -ENOMEM;
 }


 if (!e1000_check_64k_bound(adapter, txdr->desc, txdr->size)) {
  void *olddesc = txdr->desc;
  dma_addr_t olddma = txdr->dma;
  e_err(tx_err, "txdr align check failed: %u bytes at %p\n",
        txdr->size, txdr->desc);

  txdr->desc = dma_alloc_coherent(&pdev->dev, txdr->size,
      &txdr->dma, GFP_KERNEL);

  if (!txdr->desc) {
   dma_free_coherent(&pdev->dev, txdr->size, olddesc,
       olddma);
   goto setup_tx_desc_die;
  }

  if (!e1000_check_64k_bound(adapter, txdr->desc, txdr->size)) {

   dma_free_coherent(&pdev->dev, txdr->size, txdr->desc,
       txdr->dma);
   dma_free_coherent(&pdev->dev, txdr->size, olddesc,
       olddma);
   e_err(probe, "Unable to allocate aligned memory "
         "for the transmit descriptor ring\n");
   vfree(txdr->buffer_info);
   return -ENOMEM;
  } else {

   dma_free_coherent(&pdev->dev, txdr->size, olddesc,
       olddma);
  }
 }
 memset(txdr->desc, 0, txdr->size);

 txdr->next_to_use = 0;
 txdr->next_to_clean = 0;

 return 0;
}
