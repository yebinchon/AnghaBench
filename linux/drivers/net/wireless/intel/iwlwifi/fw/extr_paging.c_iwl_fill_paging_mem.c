
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct iwl_fw_runtime {int num_of_paging_blk; int num_of_pages_in_last_blk; TYPE_2__* trans; struct iwl_fw_paging* fw_paging_db; } ;
struct iwl_fw_paging {int fw_paging_size; int fw_paging_phys; int fw_paging_block; } ;
struct fw_img {int num_sec; TYPE_1__* sec; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {scalar_t__ offset; int len; int data; } ;


 int DMA_BIDIRECTIONAL ;
 int EINVAL ;
 int FW_PAGING_SIZE ;
 int IWL_DEBUG_FW (struct iwl_fw_runtime*,char*,int,...) ;
 int IWL_ERR (struct iwl_fw_runtime*,char*,...) ;
 scalar_t__ PAGING_SEPARATOR_SECTION ;
 int dma_sync_single_for_device (int ,int ,int,int ) ;
 int iwl_free_fw_paging (struct iwl_fw_runtime*) ;
 int memcpy (int ,int,int) ;
 int page_address (int ) ;

__attribute__((used)) static int iwl_fill_paging_mem(struct iwl_fw_runtime *fwrt,
          const struct fw_img *image)
{
 int sec_idx, idx, ret;
 u32 offset = 0;
 for (sec_idx = 0; sec_idx < image->num_sec; sec_idx++) {
  if (image->sec[sec_idx].offset == PAGING_SEPARATOR_SECTION) {
   sec_idx++;
   break;
  }
 }





 if (sec_idx >= image->num_sec - 1) {
  IWL_ERR(fwrt, "Paging: Missing CSS and/or paging sections\n");
  ret = -EINVAL;
  goto err;
 }


 IWL_DEBUG_FW(fwrt, "Paging: load paging CSS to FW, sec = %d\n",
       sec_idx);

 if (image->sec[sec_idx].len > fwrt->fw_paging_db[0].fw_paging_size) {
  IWL_ERR(fwrt, "CSS block is larger than paging size\n");
  ret = -EINVAL;
  goto err;
 }

 memcpy(page_address(fwrt->fw_paging_db[0].fw_paging_block),
        image->sec[sec_idx].data,
        image->sec[sec_idx].len);
 dma_sync_single_for_device(fwrt->trans->dev,
       fwrt->fw_paging_db[0].fw_paging_phys,
       fwrt->fw_paging_db[0].fw_paging_size,
       DMA_BIDIRECTIONAL);

 IWL_DEBUG_FW(fwrt,
       "Paging: copied %d CSS bytes to first block\n",
       fwrt->fw_paging_db[0].fw_paging_size);

 sec_idx++;






 for (idx = 1; idx < fwrt->num_of_paging_blk + 1; idx++) {
  struct iwl_fw_paging *block = &fwrt->fw_paging_db[idx];
  int remaining = image->sec[sec_idx].len - offset;
  int len = block->fw_paging_size;





  if (idx == fwrt->num_of_paging_blk) {
   len = remaining;
   if (remaining !=
       fwrt->num_of_pages_in_last_blk * FW_PAGING_SIZE) {
    IWL_ERR(fwrt,
     "Paging: last block contains more data than expected %d\n",
     remaining);
    ret = -EINVAL;
    goto err;
   }
  } else if (block->fw_paging_size > remaining) {
   IWL_ERR(fwrt,
    "Paging: not enough data in other in block %d (%d)\n",
    idx, remaining);
   ret = -EINVAL;
   goto err;
  }

  memcpy(page_address(block->fw_paging_block),
         image->sec[sec_idx].data + offset, len);
  dma_sync_single_for_device(fwrt->trans->dev,
        block->fw_paging_phys,
        block->fw_paging_size,
        DMA_BIDIRECTIONAL);

  IWL_DEBUG_FW(fwrt,
        "Paging: copied %d paging bytes to block %d\n",
        len, idx);

  offset += block->fw_paging_size;
 }

 return 0;

err:
 iwl_free_fw_paging(fwrt);
 return ret;
}
