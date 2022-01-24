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
struct iwl_trans_pcie {scalar_t__ ict_tbl_dma; int /*<<< orphan*/ * ict_tbl; } ;
struct iwl_trans {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICT_SIZE ; 
 struct iwl_trans_pcie* FUNC0 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 

void FUNC2(struct iwl_trans *trans)
{
	struct iwl_trans_pcie *trans_pcie = FUNC0(trans);

	if (trans_pcie->ict_tbl) {
		FUNC1(trans->dev, ICT_SIZE,
				  trans_pcie->ict_tbl,
				  trans_pcie->ict_tbl_dma);
		trans_pcie->ict_tbl = NULL;
		trans_pcie->ict_tbl_dma = 0;
	}
}