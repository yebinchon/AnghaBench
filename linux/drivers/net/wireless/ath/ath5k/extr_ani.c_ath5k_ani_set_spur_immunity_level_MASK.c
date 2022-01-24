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
struct TYPE_2__ {int max_spur_level; int spur_level; } ;
struct ath5k_hw {TYPE_1__ ani_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR5K_PHY_OFDM_SELFCORR ; 
 int /*<<< orphan*/  AR5K_PHY_OFDM_SELFCORR_CYPWR_THR1 ; 
 int /*<<< orphan*/  FUNC0 (struct ath5k_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const) ; 
 int FUNC1 (int const*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath5k_hw*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  ATH5K_DEBUG_ANI ; 
 int /*<<< orphan*/  FUNC3 (struct ath5k_hw*,char*,int) ; 

void
FUNC4(struct ath5k_hw *ah, int level)
{
	static const int val[] = { 2, 4, 6, 8, 10, 12, 14, 16 };

	if (level < 0 || level >= FUNC1(val) ||
	    level > ah->ani_state.max_spur_level) {
		FUNC3(ah, "spur immunity level %d out of range",
			  level);
		return;
	}

	FUNC0(ah, AR5K_PHY_OFDM_SELFCORR,
		AR5K_PHY_OFDM_SELFCORR_CYPWR_THR1, val[level]);

	ah->ani_state.spur_level = level;
	FUNC2(ah, ATH5K_DEBUG_ANI, "new level %d", level);
}