
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct page {int dummy; } ;
struct iwl_fw_runtime {TYPE_2__* trans; TYPE_1__* fw_paging_db; } ;
struct iwl_fw_ini_region_cfg {int dummy; } ;
struct iwl_fw_ini_error_dump_range {void* range_data_size; int data; void* page_num; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int fw_paging_size; int fw_paging_phys; struct page* fw_paging_block; } ;


 int DMA_BIDIRECTIONAL ;
 void* cpu_to_le32 (int) ;
 int dma_sync_single_for_cpu (int ,int ,int,int ) ;
 int dma_sync_single_for_device (int ,int ,int,int ) ;
 int le32_to_cpu (void*) ;
 int memcpy (int ,int ,int) ;
 int page_address (struct page*) ;

__attribute__((used)) static int _iwl_dump_ini_paging_iter(struct iwl_fw_runtime *fwrt,
         struct iwl_fw_ini_region_cfg *reg,
         void *range_ptr, int idx)
{



 struct page *page = fwrt->fw_paging_db[++idx].fw_paging_block;
 struct iwl_fw_ini_error_dump_range *range = range_ptr;
 dma_addr_t addr = fwrt->fw_paging_db[idx].fw_paging_phys;
 u32 page_size = fwrt->fw_paging_db[idx].fw_paging_size;

 range->page_num = cpu_to_le32(idx);
 range->range_data_size = cpu_to_le32(page_size);
 dma_sync_single_for_cpu(fwrt->trans->dev, addr, page_size,
    DMA_BIDIRECTIONAL);
 memcpy(range->data, page_address(page), page_size);
 dma_sync_single_for_device(fwrt->trans->dev, addr, page_size,
       DMA_BIDIRECTIONAL);

 return sizeof(*range) + le32_to_cpu(range->range_data_size);
}
