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
typedef  scalar_t__ u32 ;
struct ath9k_hw_mci {scalar_t__ gpm_idx; int query_bt; int need_flush_btinfo; } ;
struct TYPE_2__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;
struct ath_common {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_MCI_GPM_1 ; 
 int /*<<< orphan*/  AR_MCI_GPM_WRITE_PTR ; 
 int /*<<< orphan*/  MCI ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 struct ath_common* FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_common*,int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 

void FUNC4(struct ath_hw *ah)
{
	struct ath_common *common = FUNC2(ah);
	struct ath9k_hw_mci *mci = &ah->btcoex_hw.mci;
	u32 offset;

	/*
	 * This should only be called before "MAC Warm Reset" or "MCI Reset Rx".
	 */
	offset = FUNC0(FUNC1(ah, AR_MCI_GPM_1), AR_MCI_GPM_WRITE_PTR);
	if (mci->gpm_idx == offset)
		return;
	FUNC3(common, MCI, "GPM cached write pointer mismatch %d %d\n",
		mci->gpm_idx, offset);
	mci->query_bt = true;
	mci->need_flush_btinfo = true;
	mci->gpm_idx = 0;
}