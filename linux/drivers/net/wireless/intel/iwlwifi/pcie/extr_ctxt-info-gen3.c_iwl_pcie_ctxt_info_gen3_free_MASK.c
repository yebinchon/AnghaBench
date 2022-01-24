#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct iwl_trans_pcie {int /*<<< orphan*/ * prph_info; scalar_t__ prph_info_dma_addr; int /*<<< orphan*/ * prph_scratch; scalar_t__ prph_scratch_dma_addr; int /*<<< orphan*/ * ctxt_info_gen3; scalar_t__ ctxt_info_dma_addr; } ;
struct iwl_trans {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct iwl_trans_pcie* FUNC0 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*) ; 

void FUNC3(struct iwl_trans *trans)
{
	struct iwl_trans_pcie *trans_pcie = FUNC0(trans);

	if (!trans_pcie->ctxt_info_gen3)
		return;

	FUNC1(trans->dev, sizeof(*trans_pcie->ctxt_info_gen3),
			  trans_pcie->ctxt_info_gen3,
			  trans_pcie->ctxt_info_dma_addr);
	trans_pcie->ctxt_info_dma_addr = 0;
	trans_pcie->ctxt_info_gen3 = NULL;

	FUNC2(trans);

	FUNC1(trans->dev, sizeof(*trans_pcie->prph_scratch),
			  trans_pcie->prph_scratch,
			  trans_pcie->prph_scratch_dma_addr);
	trans_pcie->prph_scratch_dma_addr = 0;
	trans_pcie->prph_scratch = NULL;

	FUNC1(trans->dev, sizeof(*trans_pcie->prph_info),
			  trans_pcie->prph_info,
			  trans_pcie->prph_info_dma_addr);
	trans_pcie->prph_info_dma_addr = 0;
	trans_pcie->prph_info = NULL;
}