
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct pch_gbe_tx_ring {int count; int size; scalar_t__ next_to_use; scalar_t__ next_to_clean; scalar_t__ dma; int desc; int buffer_info; } ;
struct pch_gbe_tx_desc {int gbec_status; } ;
struct pch_gbe_buffer {int dummy; } ;
struct pch_gbe_adapter {int netdev; struct pci_dev* pdev; } ;


 int DSC_INIT16 ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct pch_gbe_tx_desc* PCH_GBE_TX_DESC (struct pch_gbe_tx_ring,int) ;
 int dma_alloc_coherent (int *,int,scalar_t__*,int ) ;
 int netdev_dbg (int ,char*,int ,unsigned long long,scalar_t__,scalar_t__) ;
 int vfree (int ) ;
 int vzalloc (int) ;

int pch_gbe_setup_tx_resources(struct pch_gbe_adapter *adapter,
    struct pch_gbe_tx_ring *tx_ring)
{
 struct pci_dev *pdev = adapter->pdev;
 struct pch_gbe_tx_desc *tx_desc;
 int size;
 int desNo;

 size = (int)sizeof(struct pch_gbe_buffer) * tx_ring->count;
 tx_ring->buffer_info = vzalloc(size);
 if (!tx_ring->buffer_info)
  return -ENOMEM;

 tx_ring->size = tx_ring->count * (int)sizeof(struct pch_gbe_tx_desc);

 tx_ring->desc = dma_alloc_coherent(&pdev->dev, tx_ring->size,
        &tx_ring->dma, GFP_KERNEL);
 if (!tx_ring->desc) {
  vfree(tx_ring->buffer_info);
  return -ENOMEM;
 }

 tx_ring->next_to_use = 0;
 tx_ring->next_to_clean = 0;

 for (desNo = 0; desNo < tx_ring->count; desNo++) {
  tx_desc = PCH_GBE_TX_DESC(*tx_ring, desNo);
  tx_desc->gbec_status = DSC_INIT16;
 }
 netdev_dbg(adapter->netdev,
     "tx_ring->desc = 0x%p  tx_ring->dma = 0x%08llx next_to_clean = 0x%08x  next_to_use = 0x%08x\n",
     tx_ring->desc, (unsigned long long)tx_ring->dma,
     tx_ring->next_to_clean, tx_ring->next_to_use);
 return 0;
}
