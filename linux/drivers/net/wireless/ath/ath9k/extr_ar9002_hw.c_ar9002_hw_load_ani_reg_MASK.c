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
struct TYPE_2__ {int ia_rows; } ;
struct ath_hw {TYPE_1__ iniModes_9271_ANI_reg; } ;
struct ath9k_channel {int dummy; } ;

/* Variables and functions */
 scalar_t__ AR_PHY_CCK_DETECT ; 
 scalar_t__ AR_PHY_CCK_DETECT_WEAK_SIG_THR_CCK ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int,scalar_t__) ; 
 scalar_t__ FUNC2 (struct ath9k_channel*) ; 
 scalar_t__ FUNC3 (struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*) ; 
 scalar_t__ FUNC5 (struct ath_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*,scalar_t__,scalar_t__) ; 

void FUNC7(struct ath_hw *ah, struct ath9k_channel *chan)
{
	u32 modesIndex;
	int i;

	if (FUNC2(chan))
		modesIndex = FUNC3(chan) ? 2 : 1;
	else
		modesIndex = FUNC3(chan) ? 3 : 4;

	FUNC0(ah);

	for (i = 0; i < ah->iniModes_9271_ANI_reg.ia_rows; i++) {
		u32 reg = FUNC1(&ah->iniModes_9271_ANI_reg, i, 0);
		u32 val = FUNC1(&ah->iniModes_9271_ANI_reg, i, modesIndex);
		u32 val_orig;

		if (reg == AR_PHY_CCK_DETECT) {
			val_orig = FUNC5(ah, reg);
			val &= AR_PHY_CCK_DETECT_WEAK_SIG_THR_CCK;
			val_orig &= ~AR_PHY_CCK_DETECT_WEAK_SIG_THR_CCK;

			FUNC6(ah, reg, val|val_orig);
		} else
			FUNC6(ah, reg, val);
	}

	FUNC4(ah);
}