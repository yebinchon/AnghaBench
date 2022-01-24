#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct iwl_fw_runtime {struct iwl_fw_paging* fw_paging_db; TYPE_1__* trans; } ;
struct iwl_fw_paging {int /*<<< orphan*/ * fw_paging_block; int /*<<< orphan*/  fw_paging_size; int /*<<< orphan*/  fw_paging_phys; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_fw_runtime*,char*,int) ; 
 int NUM_OF_FW_PAGING_BLOCKS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_fw_paging*,int /*<<< orphan*/ ,int) ; 

void FUNC5(struct iwl_fw_runtime *fwrt)
{
	int i;

	if (!fwrt->fw_paging_db[0].fw_paging_block)
		return;

	for (i = 0; i < NUM_OF_FW_PAGING_BLOCKS; i++) {
		struct iwl_fw_paging *paging = &fwrt->fw_paging_db[i];

		if (!paging->fw_paging_block) {
			FUNC0(fwrt,
				     "Paging: block %d already freed, continue to next page\n",
				     i);

			continue;
		}
		FUNC2(fwrt->trans->dev, paging->fw_paging_phys,
			       paging->fw_paging_size, DMA_BIDIRECTIONAL);

		FUNC1(paging->fw_paging_block,
			     FUNC3(paging->fw_paging_size));
		paging->fw_paging_block = NULL;
	}

	FUNC4(fwrt->fw_paging_db, 0, sizeof(fwrt->fw_paging_db));
}