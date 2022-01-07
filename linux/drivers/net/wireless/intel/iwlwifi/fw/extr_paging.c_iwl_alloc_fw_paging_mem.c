
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct iwl_fw_runtime {int num_of_paging_blk; int num_of_pages_in_last_blk; TYPE_2__* fw_paging_db; TYPE_1__* trans; } ;
struct fw_img {int paging_mem_size; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int fw_paging_size; int fw_paging_phys; struct page* fw_paging_block; } ;
struct TYPE_3__ {int dev; } ;


 int BIT (int ) ;
 int BLOCK_2_EXP_SIZE ;
 int BUILD_BUG_ON (int) ;
 int DIV_ROUND_UP (int,int) ;
 int DMA_BIDIRECTIONAL ;
 int ENOMEM ;
 int FW_PAGING_SIZE ;
 int GFP_KERNEL ;
 int IWL_DEBUG_FW (struct iwl_fw_runtime*,char*,int,...) ;
 int NUM_OF_PAGE_PER_GROUP ;
 int PAGE_SIZE ;
 int PAGING_BLOCK_SIZE ;
 struct page* alloc_pages (int ,int) ;
 int dma_map_page (int ,struct page*,int ,int,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 int get_order (int) ;
 int iwl_free_fw_paging (struct iwl_fw_runtime*) ;

__attribute__((used)) static int iwl_alloc_fw_paging_mem(struct iwl_fw_runtime *fwrt,
       const struct fw_img *image)
{
 struct page *block;
 dma_addr_t phys = 0;
 int blk_idx, order, num_of_pages, size;

 if (fwrt->fw_paging_db[0].fw_paging_block)
  return 0;


 BUILD_BUG_ON(BIT(BLOCK_2_EXP_SIZE) != PAGING_BLOCK_SIZE);

 num_of_pages = image->paging_mem_size / FW_PAGING_SIZE;
 fwrt->num_of_paging_blk =
  DIV_ROUND_UP(num_of_pages, NUM_OF_PAGE_PER_GROUP);
 fwrt->num_of_pages_in_last_blk =
  num_of_pages -
  NUM_OF_PAGE_PER_GROUP * (fwrt->num_of_paging_blk - 1);

 IWL_DEBUG_FW(fwrt,
       "Paging: allocating mem for %d paging blocks, each block holds 8 pages, last block holds %d pages\n",
       fwrt->num_of_paging_blk,
       fwrt->num_of_pages_in_last_blk);




 for (blk_idx = 0; blk_idx < fwrt->num_of_paging_blk + 1; blk_idx++) {

  size = blk_idx ? PAGING_BLOCK_SIZE : FW_PAGING_SIZE;
  order = get_order(size);
  block = alloc_pages(GFP_KERNEL, order);
  if (!block) {

   iwl_free_fw_paging(fwrt);
   return -ENOMEM;
  }

  fwrt->fw_paging_db[blk_idx].fw_paging_block = block;
  fwrt->fw_paging_db[blk_idx].fw_paging_size = size;

  phys = dma_map_page(fwrt->trans->dev, block, 0,
        PAGE_SIZE << order,
        DMA_BIDIRECTIONAL);
  if (dma_mapping_error(fwrt->trans->dev, phys)) {




   iwl_free_fw_paging(fwrt);
   return -ENOMEM;
  }
  fwrt->fw_paging_db[blk_idx].fw_paging_phys = phys;

  if (!blk_idx)
   IWL_DEBUG_FW(fwrt,
         "Paging: allocated 4K(CSS) bytes (order %d) for firmware paging.\n",
         order);
  else
   IWL_DEBUG_FW(fwrt,
         "Paging: allocated 32K bytes (order %d) for firmware paging.\n",
         order);
 }

 return 0;
}
