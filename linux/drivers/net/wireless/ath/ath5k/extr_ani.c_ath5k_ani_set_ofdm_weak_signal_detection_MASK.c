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
struct TYPE_2__ {int ofdm_weak_sig; } ;
struct ath5k_hw {TYPE_1__ ani_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR5K_PHY_WEAK_OFDM_HIGH_THR ; 
 int /*<<< orphan*/  AR5K_PHY_WEAK_OFDM_HIGH_THR_M1 ; 
 int /*<<< orphan*/  AR5K_PHY_WEAK_OFDM_HIGH_THR_M2 ; 
 int /*<<< orphan*/  AR5K_PHY_WEAK_OFDM_HIGH_THR_M2_COUNT ; 
 int /*<<< orphan*/  AR5K_PHY_WEAK_OFDM_LOW_THR ; 
 int /*<<< orphan*/  AR5K_PHY_WEAK_OFDM_LOW_THR_M1 ; 
 int /*<<< orphan*/  AR5K_PHY_WEAK_OFDM_LOW_THR_M2 ; 
 int /*<<< orphan*/  AR5K_PHY_WEAK_OFDM_LOW_THR_M2_COUNT ; 
 int /*<<< orphan*/  AR5K_PHY_WEAK_OFDM_LOW_THR_SELFCOR_EN ; 
 int /*<<< orphan*/  FUNC0 (struct ath5k_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath5k_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath5k_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC3 (struct ath5k_hw*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  ATH5K_DEBUG_ANI ; 

void
FUNC4(struct ath5k_hw *ah, bool on)
{
	static const int m1l[] = { 127, 50 };
	static const int m2l[] = { 127, 40 };
	static const int m1[] = { 127, 0x4d };
	static const int m2[] = { 127, 0x40 };
	static const int m2cnt[] = { 31, 16 };
	static const int m2lcnt[] = { 63, 48 };

	FUNC2(ah, AR5K_PHY_WEAK_OFDM_LOW_THR,
				AR5K_PHY_WEAK_OFDM_LOW_THR_M1, m1l[on]);
	FUNC2(ah, AR5K_PHY_WEAK_OFDM_LOW_THR,
				AR5K_PHY_WEAK_OFDM_LOW_THR_M2, m2l[on]);
	FUNC2(ah, AR5K_PHY_WEAK_OFDM_HIGH_THR,
				AR5K_PHY_WEAK_OFDM_HIGH_THR_M1, m1[on]);
	FUNC2(ah, AR5K_PHY_WEAK_OFDM_HIGH_THR,
				AR5K_PHY_WEAK_OFDM_HIGH_THR_M2, m2[on]);
	FUNC2(ah, AR5K_PHY_WEAK_OFDM_HIGH_THR,
			AR5K_PHY_WEAK_OFDM_HIGH_THR_M2_COUNT, m2cnt[on]);
	FUNC2(ah, AR5K_PHY_WEAK_OFDM_LOW_THR,
			AR5K_PHY_WEAK_OFDM_LOW_THR_M2_COUNT, m2lcnt[on]);

	if (on)
		FUNC1(ah, AR5K_PHY_WEAK_OFDM_LOW_THR,
				AR5K_PHY_WEAK_OFDM_LOW_THR_SELFCOR_EN);
	else
		FUNC0(ah, AR5K_PHY_WEAK_OFDM_LOW_THR,
				AR5K_PHY_WEAK_OFDM_LOW_THR_SELFCOR_EN);

	ah->ani_state.ofdm_weak_sig = on;
	FUNC3(ah, ATH5K_DEBUG_ANI, "turned %s",
			  on ? "on" : "off");
}