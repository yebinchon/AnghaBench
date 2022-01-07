
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_trans_pcie {int rx_page_order; TYPE_1__* rx_pool; } ;
struct iwl_trans {int dev; } ;
struct TYPE_2__ {int * page; int page_dma; } ;


 int DMA_FROM_DEVICE ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int PAGE_SIZE ;
 int RX_POOL_SIZE ;
 int __free_pages (int *,int) ;
 int dma_unmap_page (int ,int ,int,int ) ;

void iwl_pcie_free_rbs_pool(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 int i;

 for (i = 0; i < RX_POOL_SIZE; i++) {
  if (!trans_pcie->rx_pool[i].page)
   continue;
  dma_unmap_page(trans->dev, trans_pcie->rx_pool[i].page_dma,
          PAGE_SIZE << trans_pcie->rx_page_order,
          DMA_FROM_DEVICE);
  __free_pages(trans_pcie->rx_pool[i].page,
        trans_pcie->rx_page_order);
  trans_pcie->rx_pool[i].page = ((void*)0);
 }
}
