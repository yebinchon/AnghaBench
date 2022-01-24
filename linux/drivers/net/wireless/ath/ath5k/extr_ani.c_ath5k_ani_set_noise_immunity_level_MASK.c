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
struct TYPE_2__ {int noise_imm_level; } ;
struct ath5k_hw {TYPE_1__ ani_state; } ;
typedef  int s8 ;

/* Variables and functions */
 int /*<<< orphan*/  AR5K_PHY_AGCCOARSE ; 
 int /*<<< orphan*/  AR5K_PHY_AGCCOARSE_HI ; 
 int /*<<< orphan*/  AR5K_PHY_AGCCOARSE_LO ; 
 int /*<<< orphan*/  AR5K_PHY_DESIRED_SIZE ; 
 int /*<<< orphan*/  AR5K_PHY_DESIRED_SIZE_TOT ; 
 int /*<<< orphan*/  AR5K_PHY_SIG ; 
 int /*<<< orphan*/  AR5K_PHY_SIG_FIRPWR ; 
 int /*<<< orphan*/  FUNC0 (struct ath5k_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const) ; 
 int FUNC1 (int const*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath5k_hw*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  ATH5K_DEBUG_ANI ; 
 int /*<<< orphan*/  FUNC3 (struct ath5k_hw*,char*,int) ; 

void
FUNC4(struct ath5k_hw *ah, int level)
{
	/* TODO:
	 * ANI documents suggest the following five levels to use, but the HAL
	 * and ath9k use only the last two levels, making this
	 * essentially an on/off option. There *may* be a reason for this (???),
	 * so i stick with the HAL version for now...
	 */
#if 0
	static const s8 lo[] = { -52, -56, -60, -64, -70 };
	static const s8 hi[] = { -18, -18, -16, -14, -12 };
	static const s8 sz[] = { -34, -41, -48, -55, -62 };
	static const s8 fr[] = { -70, -72, -75, -78, -80 };
#else
	static const s8 lo[] = { -64, -70 };
	static const s8 hi[] = { -14, -12 };
	static const s8 sz[] = { -55, -62 };
	static const s8 fr[] = { -78, -80 };
#endif
	if (level < 0 || level >= FUNC1(sz)) {
		FUNC3(ah, "noise immunity level %d out of range",
			  level);
		return;
	}

	FUNC0(ah, AR5K_PHY_DESIRED_SIZE,
				AR5K_PHY_DESIRED_SIZE_TOT, sz[level]);
	FUNC0(ah, AR5K_PHY_AGCCOARSE,
				AR5K_PHY_AGCCOARSE_LO, lo[level]);
	FUNC0(ah, AR5K_PHY_AGCCOARSE,
				AR5K_PHY_AGCCOARSE_HI, hi[level]);
	FUNC0(ah, AR5K_PHY_SIG,
				AR5K_PHY_SIG_FIRPWR, fr[level]);

	ah->ani_state.noise_imm_level = level;
	FUNC2(ah, ATH5K_DEBUG_ANI, "new level %d", level);
}