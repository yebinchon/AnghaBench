#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct iwl_self_init_dram {size_t fw_cnt; int /*<<< orphan*/  paging_cnt; TYPE_1__* paging; TYPE_1__* fw; } ;
struct iwl_trans {struct iwl_self_init_dram init_dram; } ;
struct iwl_context_info_dram {void** virtual_img; void** umac_img; void** lmac_img; } ;
struct fw_img {int /*<<< orphan*/ * sec; } ;
struct TYPE_3__ {int /*<<< orphan*/  physical; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct iwl_trans*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*) ; 
 int FUNC4 (struct fw_img const*,int) ; 
 void* FUNC5 (int,int,int /*<<< orphan*/ ) ; 

int FUNC6(struct iwl_trans *trans,
			 const struct fw_img *fw,
			 struct iwl_context_info_dram *ctxt_dram)
{
	struct iwl_self_init_dram *dram = &trans->init_dram;
	int i, ret, lmac_cnt, umac_cnt, paging_cnt;

	if (FUNC0(dram->paging,
		 "paging shouldn't already be initialized (%d pages)\n",
		 dram->paging_cnt))
		FUNC3(trans);

	lmac_cnt = FUNC4(fw, 0);
	/* add 1 due to separator */
	umac_cnt = FUNC4(fw, lmac_cnt + 1);
	/* add 2 due to separators */
	paging_cnt = FUNC4(fw, lmac_cnt + umac_cnt + 2);

	dram->fw = FUNC5(umac_cnt + lmac_cnt, sizeof(*dram->fw), GFP_KERNEL);
	if (!dram->fw)
		return -ENOMEM;
	dram->paging = FUNC5(paging_cnt, sizeof(*dram->paging), GFP_KERNEL);
	if (!dram->paging)
		return -ENOMEM;

	/* initialize lmac sections */
	for (i = 0; i < lmac_cnt; i++) {
		ret = FUNC2(trans, &fw->sec[i],
						   &dram->fw[dram->fw_cnt]);
		if (ret)
			return ret;
		ctxt_dram->lmac_img[i] =
			FUNC1(dram->fw[dram->fw_cnt].physical);
		dram->fw_cnt++;
	}

	/* initialize umac sections */
	for (i = 0; i < umac_cnt; i++) {
		/* access FW with +1 to make up for lmac separator */
		ret = FUNC2(trans,
						   &fw->sec[dram->fw_cnt + 1],
						   &dram->fw[dram->fw_cnt]);
		if (ret)
			return ret;
		ctxt_dram->umac_img[i] =
			FUNC1(dram->fw[dram->fw_cnt].physical);
		dram->fw_cnt++;
	}

	/*
	 * Initialize paging.
	 * Paging memory isn't stored in dram->fw as the umac and lmac - it is
	 * stored separately.
	 * This is since the timing of its release is different -
	 * while fw memory can be released on alive, the paging memory can be
	 * freed only when the device goes down.
	 * Given that, the logic here in accessing the fw image is a bit
	 * different - fw_cnt isn't changing so loop counter is added to it.
	 */
	for (i = 0; i < paging_cnt; i++) {
		/* access FW with +2 to make up for lmac & umac separators */
		int fw_idx = dram->fw_cnt + i + 2;

		ret = FUNC2(trans, &fw->sec[fw_idx],
						   &dram->paging[i]);
		if (ret)
			return ret;

		ctxt_dram->virtual_img[i] =
			FUNC1(dram->paging[i].physical);
		dram->paging_cnt++;
	}

	return 0;
}