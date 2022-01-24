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
struct iwl_trans_pcie {int ict_tbl_dma; int /*<<< orphan*/  ict_tbl; } ;
struct iwl_trans {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int ICT_SIZE ; 
 struct iwl_trans_pcie* FUNC0 (struct iwl_trans*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*) ; 

int FUNC4(struct iwl_trans *trans)
{
	struct iwl_trans_pcie *trans_pcie = FUNC0(trans);

	trans_pcie->ict_tbl =
		FUNC2(trans->dev, ICT_SIZE,
				   &trans_pcie->ict_tbl_dma, GFP_KERNEL);
	if (!trans_pcie->ict_tbl)
		return -ENOMEM;

	/* just an API sanity check ... it is guaranteed to be aligned */
	if (FUNC1(trans_pcie->ict_tbl_dma & (ICT_SIZE - 1))) {
		FUNC3(trans);
		return -EINVAL;
	}

	return 0;
}