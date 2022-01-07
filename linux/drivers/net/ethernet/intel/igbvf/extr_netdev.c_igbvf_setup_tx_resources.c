
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union e1000_adv_tx_desc {int dummy; } e1000_adv_tx_desc ;
struct pci_dev {int dev; } ;
struct igbvf_ring {int count; int size; int buffer_info; scalar_t__ next_to_clean; scalar_t__ next_to_use; struct igbvf_adapter* adapter; int desc; int dma; } ;
struct igbvf_buffer {int dummy; } ;
struct igbvf_adapter {struct pci_dev* pdev; } ;


 int ALIGN (int,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int *,char*) ;
 int dma_alloc_coherent (int *,int,int *,int ) ;
 int vfree (int ) ;
 int vzalloc (int) ;

int igbvf_setup_tx_resources(struct igbvf_adapter *adapter,
        struct igbvf_ring *tx_ring)
{
 struct pci_dev *pdev = adapter->pdev;
 int size;

 size = sizeof(struct igbvf_buffer) * tx_ring->count;
 tx_ring->buffer_info = vzalloc(size);
 if (!tx_ring->buffer_info)
  goto err;


 tx_ring->size = tx_ring->count * sizeof(union e1000_adv_tx_desc);
 tx_ring->size = ALIGN(tx_ring->size, 4096);

 tx_ring->desc = dma_alloc_coherent(&pdev->dev, tx_ring->size,
        &tx_ring->dma, GFP_KERNEL);
 if (!tx_ring->desc)
  goto err;

 tx_ring->adapter = adapter;
 tx_ring->next_to_use = 0;
 tx_ring->next_to_clean = 0;

 return 0;
err:
 vfree(tx_ring->buffer_info);
 dev_err(&adapter->pdev->dev,
  "Unable to allocate memory for the transmit descriptor ring\n");
 return -ENOMEM;
}
