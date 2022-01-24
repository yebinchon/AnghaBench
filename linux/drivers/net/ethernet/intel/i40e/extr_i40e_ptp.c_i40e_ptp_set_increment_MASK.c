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
typedef  int u64 ;
typedef  int u32 ;
struct i40e_link_status {int link_speed; } ;
struct TYPE_3__ {struct i40e_link_status link_info; } ;
struct i40e_hw {TYPE_1__ phy; } ;
struct i40e_pf {int /*<<< orphan*/  ptp_adj_mult; TYPE_2__* pdev; struct i40e_hw hw; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  I40E_LINK_SPEED_100MB 131 
#define  I40E_LINK_SPEED_10GB 130 
#define  I40E_LINK_SPEED_1GB 129 
#define  I40E_LINK_SPEED_40GB 128 
 int /*<<< orphan*/  I40E_PRTTSYN_INC_H ; 
 int /*<<< orphan*/  I40E_PRTTSYN_INC_L ; 
 int I40E_PTP_10GB_INCVAL_MULT ; 
 int I40E_PTP_1GB_INCVAL_MULT ; 
 int I40E_PTP_40GB_INCVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_hw*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_hw*,int /*<<< orphan*/ ,int) ; 

void FUNC5(struct i40e_pf *pf)
{
	struct i40e_link_status *hw_link_info;
	struct i40e_hw *hw = &pf->hw;
	u64 incval;
	u32 mult;

	hw_link_info = &hw->phy.link_info;

	FUNC2(&pf->hw, true, NULL, NULL);

	switch (hw_link_info->link_speed) {
	case I40E_LINK_SPEED_10GB:
		mult = I40E_PTP_10GB_INCVAL_MULT;
		break;
	case I40E_LINK_SPEED_1GB:
		mult = I40E_PTP_1GB_INCVAL_MULT;
		break;
	case I40E_LINK_SPEED_100MB:
	{
		static int warn_once;

		if (!warn_once) {
			FUNC1(&pf->pdev->dev,
				 "1588 functionality is not supported at 100 Mbps. Stopping the PHC.\n");
			warn_once++;
		}
		mult = 0;
		break;
	}
	case I40E_LINK_SPEED_40GB:
	default:
		mult = 1;
		break;
	}

	/* The increment value is calculated by taking the base 40GbE incvalue
	 * and multiplying it by a factor based on the link speed.
	 */
	incval = I40E_PTP_40GB_INCVAL * mult;

	/* Write the new increment value into the increment register. The
	 * hardware will not update the clock until both registers have been
	 * written.
	 */
	FUNC4(hw, I40E_PRTTSYN_INC_L, incval & 0xFFFFFFFF);
	FUNC4(hw, I40E_PRTTSYN_INC_H, incval >> 32);

	/* Update the base adjustement value. */
	FUNC0(pf->ptp_adj_mult, mult);
	FUNC3(); /* Force the above update. */
}