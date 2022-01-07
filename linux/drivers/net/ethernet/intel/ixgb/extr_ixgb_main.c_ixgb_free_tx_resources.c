
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct TYPE_2__ {int * desc; int dma; int size; int * buffer_info; } ;
struct ixgb_adapter {TYPE_1__ tx_ring; struct pci_dev* pdev; } ;


 int dma_free_coherent (int *,int ,int *,int ) ;
 int ixgb_clean_tx_ring (struct ixgb_adapter*) ;
 int vfree (int *) ;

void
ixgb_free_tx_resources(struct ixgb_adapter *adapter)
{
 struct pci_dev *pdev = adapter->pdev;

 ixgb_clean_tx_ring(adapter);

 vfree(adapter->tx_ring.buffer_info);
 adapter->tx_ring.buffer_info = ((void*)0);

 dma_free_coherent(&pdev->dev, adapter->tx_ring.size,
     adapter->tx_ring.desc, adapter->tx_ring.dma);

 adapter->tx_ring.desc = ((void*)0);
}
