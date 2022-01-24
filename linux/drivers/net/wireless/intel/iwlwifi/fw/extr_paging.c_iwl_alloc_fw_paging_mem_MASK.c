#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct iwl_fw_runtime {int num_of_paging_blk; int num_of_pages_in_last_blk; TYPE_2__* fw_paging_db; TYPE_1__* trans; } ;
struct fw_img {int paging_mem_size; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_4__ {int fw_paging_size; int /*<<< orphan*/  fw_paging_phys; struct page* fw_paging_block; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BLOCK_2_EXP_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int ENOMEM ; 
 int FW_PAGING_SIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_fw_runtime*,char*,int,...) ; 
 int NUM_OF_PAGE_PER_GROUP ; 
 int PAGE_SIZE ; 
 int PAGING_BLOCK_SIZE ; 
 struct page* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_fw_runtime*) ; 

__attribute__((used)) static int FUNC9(struct iwl_fw_runtime *fwrt,
				   const struct fw_img *image)
{
	struct page *block;
	dma_addr_t phys = 0;
	int blk_idx, order, num_of_pages, size;

	if (fwrt->fw_paging_db[0].fw_paging_block)
		return 0;

	/* ensure BLOCK_2_EXP_SIZE is power of 2 of PAGING_BLOCK_SIZE */
	FUNC1(FUNC0(BLOCK_2_EXP_SIZE) != PAGING_BLOCK_SIZE);

	num_of_pages = image->paging_mem_size / FW_PAGING_SIZE;
	fwrt->num_of_paging_blk =
		FUNC2(num_of_pages, NUM_OF_PAGE_PER_GROUP);
	fwrt->num_of_pages_in_last_blk =
		num_of_pages -
		NUM_OF_PAGE_PER_GROUP * (fwrt->num_of_paging_blk - 1);

	FUNC3(fwrt,
		     "Paging: allocating mem for %d paging blocks, each block holds 8 pages, last block holds %d pages\n",
		     fwrt->num_of_paging_blk,
		     fwrt->num_of_pages_in_last_blk);

	/*
	 * Allocate CSS and paging blocks in dram.
	 */
	for (blk_idx = 0; blk_idx < fwrt->num_of_paging_blk + 1; blk_idx++) {
		/* For CSS allocate 4KB, for others PAGING_BLOCK_SIZE (32K) */
		size = blk_idx ? PAGING_BLOCK_SIZE : FW_PAGING_SIZE;
		order = FUNC7(size);
		block = FUNC4(GFP_KERNEL, order);
		if (!block) {
			/* free all the previous pages since we failed */
			FUNC8(fwrt);
			return -ENOMEM;
		}

		fwrt->fw_paging_db[blk_idx].fw_paging_block = block;
		fwrt->fw_paging_db[blk_idx].fw_paging_size = size;

		phys = FUNC5(fwrt->trans->dev, block, 0,
				    PAGE_SIZE << order,
				    DMA_BIDIRECTIONAL);
		if (FUNC6(fwrt->trans->dev, phys)) {
			/*
			 * free the previous pages and the current one
			 * since we failed to map_page.
			 */
			FUNC8(fwrt);
			return -ENOMEM;
		}
		fwrt->fw_paging_db[blk_idx].fw_paging_phys = phys;

		if (!blk_idx)
			FUNC3(fwrt,
				     "Paging: allocated 4K(CSS) bytes (order %d) for firmware paging.\n",
				     order);
		else
			FUNC3(fwrt,
				     "Paging: allocated 32K bytes (order %d) for firmware paging.\n",
				     order);
	}

	return 0;
}