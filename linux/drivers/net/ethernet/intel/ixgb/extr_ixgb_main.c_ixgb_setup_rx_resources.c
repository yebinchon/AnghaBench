
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct ixgb_rx_desc {int dummy; } ;
struct ixgb_desc_ring {int count; int size; scalar_t__ next_to_use; scalar_t__ next_to_clean; int buffer_info; int desc; int dma; } ;
struct ixgb_buffer {int dummy; } ;
struct ixgb_adapter {struct pci_dev* pdev; struct ixgb_desc_ring rx_ring; } ;


 int ALIGN (int,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dma_alloc_coherent (int *,int,int *,int ) ;
 int vfree (int ) ;
 int vzalloc (int) ;

int
ixgb_setup_rx_resources(struct ixgb_adapter *adapter)
{
 struct ixgb_desc_ring *rxdr = &adapter->rx_ring;
 struct pci_dev *pdev = adapter->pdev;
 int size;

 size = sizeof(struct ixgb_buffer) * rxdr->count;
 rxdr->buffer_info = vzalloc(size);
 if (!rxdr->buffer_info)
  return -ENOMEM;



 rxdr->size = rxdr->count * sizeof(struct ixgb_rx_desc);
 rxdr->size = ALIGN(rxdr->size, 4096);

 rxdr->desc = dma_alloc_coherent(&pdev->dev, rxdr->size, &rxdr->dma,
     GFP_KERNEL);

 if (!rxdr->desc) {
  vfree(rxdr->buffer_info);
  return -ENOMEM;
 }

 rxdr->next_to_clean = 0;
 rxdr->next_to_use = 0;

 return 0;
}
