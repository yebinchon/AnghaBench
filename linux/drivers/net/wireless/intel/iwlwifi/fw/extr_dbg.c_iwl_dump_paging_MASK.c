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
struct iwl_fw_runtime {int num_of_paging_blk; TYPE_2__* trans; TYPE_1__* fw_paging_db; } ;
struct iwl_fw_error_dump_paging {int /*<<< orphan*/  data; void* index; } ;
struct iwl_fw_error_dump_data {scalar_t__ data; void* len; void* type; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  fw_paging_phys; struct page* fw_paging_block; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_fw_runtime*,char*) ; 
 int IWL_FW_ERROR_DUMP_PAGING ; 
 int PAGING_BLOCK_SIZE ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct iwl_fw_error_dump_data* FUNC4 (struct iwl_fw_error_dump_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 

__attribute__((used)) static void FUNC7(struct iwl_fw_runtime *fwrt,
			    struct iwl_fw_error_dump_data **data)
{
	int i;

	FUNC0(fwrt, "WRT paging dump\n");
	for (i = 1; i < fwrt->num_of_paging_blk + 1; i++) {
		struct iwl_fw_error_dump_paging *paging;
		struct page *pages =
			fwrt->fw_paging_db[i].fw_paging_block;
		dma_addr_t addr = fwrt->fw_paging_db[i].fw_paging_phys;

		(*data)->type = FUNC1(IWL_FW_ERROR_DUMP_PAGING);
		(*data)->len = FUNC1(sizeof(*paging) +
					     PAGING_BLOCK_SIZE);
		paging =  (void *)(*data)->data;
		paging->index = FUNC1(i);
		FUNC2(fwrt->trans->dev, addr,
					PAGING_BLOCK_SIZE,
					DMA_BIDIRECTIONAL);
		FUNC5(paging->data, FUNC6(pages),
		       PAGING_BLOCK_SIZE);
		FUNC3(fwrt->trans->dev, addr,
					   PAGING_BLOCK_SIZE,
					   DMA_BIDIRECTIONAL);
		(*data) = FUNC4(*data);
	}
}