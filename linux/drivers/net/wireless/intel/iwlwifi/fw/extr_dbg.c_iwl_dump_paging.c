
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct iwl_fw_runtime {int num_of_paging_blk; TYPE_2__* trans; TYPE_1__* fw_paging_db; } ;
struct iwl_fw_error_dump_paging {int data; void* index; } ;
struct iwl_fw_error_dump_data {scalar_t__ data; void* len; void* type; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int fw_paging_phys; struct page* fw_paging_block; } ;


 int DMA_BIDIRECTIONAL ;
 int IWL_DEBUG_INFO (struct iwl_fw_runtime*,char*) ;
 int IWL_FW_ERROR_DUMP_PAGING ;
 int PAGING_BLOCK_SIZE ;
 void* cpu_to_le32 (int) ;
 int dma_sync_single_for_cpu (int ,int ,int,int ) ;
 int dma_sync_single_for_device (int ,int ,int,int ) ;
 struct iwl_fw_error_dump_data* iwl_fw_error_next_data (struct iwl_fw_error_dump_data*) ;
 int memcpy (int ,int ,int) ;
 int page_address (struct page*) ;

__attribute__((used)) static void iwl_dump_paging(struct iwl_fw_runtime *fwrt,
       struct iwl_fw_error_dump_data **data)
{
 int i;

 IWL_DEBUG_INFO(fwrt, "WRT paging dump\n");
 for (i = 1; i < fwrt->num_of_paging_blk + 1; i++) {
  struct iwl_fw_error_dump_paging *paging;
  struct page *pages =
   fwrt->fw_paging_db[i].fw_paging_block;
  dma_addr_t addr = fwrt->fw_paging_db[i].fw_paging_phys;

  (*data)->type = cpu_to_le32(IWL_FW_ERROR_DUMP_PAGING);
  (*data)->len = cpu_to_le32(sizeof(*paging) +
          PAGING_BLOCK_SIZE);
  paging = (void *)(*data)->data;
  paging->index = cpu_to_le32(i);
  dma_sync_single_for_cpu(fwrt->trans->dev, addr,
     PAGING_BLOCK_SIZE,
     DMA_BIDIRECTIONAL);
  memcpy(paging->data, page_address(pages),
         PAGING_BLOCK_SIZE);
  dma_sync_single_for_device(fwrt->trans->dev, addr,
        PAGING_BLOCK_SIZE,
        DMA_BIDIRECTIONAL);
  (*data) = iwl_fw_error_next_data(*data);
 }
}
