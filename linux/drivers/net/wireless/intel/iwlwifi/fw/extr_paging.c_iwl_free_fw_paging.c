
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_fw_runtime {struct iwl_fw_paging* fw_paging_db; TYPE_1__* trans; } ;
struct iwl_fw_paging {int * fw_paging_block; int fw_paging_size; int fw_paging_phys; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_BIDIRECTIONAL ;
 int IWL_DEBUG_FW (struct iwl_fw_runtime*,char*,int) ;
 int NUM_OF_FW_PAGING_BLOCKS ;
 int __free_pages (int *,int ) ;
 int dma_unmap_page (int ,int ,int ,int ) ;
 int get_order (int ) ;
 int memset (struct iwl_fw_paging*,int ,int) ;

void iwl_free_fw_paging(struct iwl_fw_runtime *fwrt)
{
 int i;

 if (!fwrt->fw_paging_db[0].fw_paging_block)
  return;

 for (i = 0; i < NUM_OF_FW_PAGING_BLOCKS; i++) {
  struct iwl_fw_paging *paging = &fwrt->fw_paging_db[i];

  if (!paging->fw_paging_block) {
   IWL_DEBUG_FW(fwrt,
         "Paging: block %d already freed, continue to next page\n",
         i);

   continue;
  }
  dma_unmap_page(fwrt->trans->dev, paging->fw_paging_phys,
          paging->fw_paging_size, DMA_BIDIRECTIONAL);

  __free_pages(paging->fw_paging_block,
        get_order(paging->fw_paging_size));
  paging->fw_paging_block = ((void*)0);
 }

 memset(fwrt->fw_paging_db, 0, sizeof(fwrt->fw_paging_db));
}
