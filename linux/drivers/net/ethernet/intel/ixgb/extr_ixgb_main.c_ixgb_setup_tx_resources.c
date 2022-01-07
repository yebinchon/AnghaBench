
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct ixgb_tx_desc {int dummy; } ;
struct ixgb_desc_ring {int count; int size; scalar_t__ next_to_clean; scalar_t__ next_to_use; int buffer_info; int desc; int dma; } ;
struct ixgb_buffer {int dummy; } ;
struct ixgb_adapter {struct pci_dev* pdev; struct ixgb_desc_ring tx_ring; } ;


 int ALIGN (int,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dma_alloc_coherent (int *,int,int *,int ) ;
 int vfree (int ) ;
 int vzalloc (int) ;

int
ixgb_setup_tx_resources(struct ixgb_adapter *adapter)
{
 struct ixgb_desc_ring *txdr = &adapter->tx_ring;
 struct pci_dev *pdev = adapter->pdev;
 int size;

 size = sizeof(struct ixgb_buffer) * txdr->count;
 txdr->buffer_info = vzalloc(size);
 if (!txdr->buffer_info)
  return -ENOMEM;



 txdr->size = txdr->count * sizeof(struct ixgb_tx_desc);
 txdr->size = ALIGN(txdr->size, 4096);

 txdr->desc = dma_alloc_coherent(&pdev->dev, txdr->size, &txdr->dma,
     GFP_KERNEL);
 if (!txdr->desc) {
  vfree(txdr->buffer_info);
  return -ENOMEM;
 }

 txdr->next_to_use = 0;
 txdr->next_to_clean = 0;

 return 0;
}
