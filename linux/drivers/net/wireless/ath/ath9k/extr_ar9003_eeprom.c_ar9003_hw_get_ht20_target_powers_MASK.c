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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct ath_hw {int dummy; } ;

/* Variables and functions */
 size_t ALL_TARGET_HT20_0_8_16 ; 
 size_t ALL_TARGET_HT20_12 ; 
 size_t ALL_TARGET_HT20_13 ; 
 size_t ALL_TARGET_HT20_14 ; 
 size_t ALL_TARGET_HT20_15 ; 
 size_t ALL_TARGET_HT20_1_3_9_11_17_19 ; 
 size_t ALL_TARGET_HT20_20 ; 
 size_t ALL_TARGET_HT20_21 ; 
 size_t ALL_TARGET_HT20_22 ; 
 size_t ALL_TARGET_HT20_23 ; 
 size_t ALL_TARGET_HT20_4 ; 
 size_t ALL_TARGET_HT20_5 ; 
 size_t ALL_TARGET_HT20_6 ; 
 size_t ALL_TARGET_HT20_7 ; 
 int /*<<< orphan*/  HT_TARGET_RATE_0_8_16 ; 
 int /*<<< orphan*/  HT_TARGET_RATE_12 ; 
 int /*<<< orphan*/  HT_TARGET_RATE_13 ; 
 int /*<<< orphan*/  HT_TARGET_RATE_14 ; 
 int /*<<< orphan*/  HT_TARGET_RATE_15 ; 
 int /*<<< orphan*/  HT_TARGET_RATE_1_3_9_11_17_19 ; 
 int /*<<< orphan*/  HT_TARGET_RATE_20 ; 
 int /*<<< orphan*/  HT_TARGET_RATE_21 ; 
 int /*<<< orphan*/  HT_TARGET_RATE_22 ; 
 int /*<<< orphan*/  HT_TARGET_RATE_23 ; 
 int /*<<< orphan*/  HT_TARGET_RATE_4 ; 
 int /*<<< orphan*/  HT_TARGET_RATE_5 ; 
 int /*<<< orphan*/  HT_TARGET_RATE_6 ; 
 int /*<<< orphan*/  HT_TARGET_RATE_7 ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct ath_hw *ah, u16 freq,
					     u8 *targetPowerValT2, bool is2GHz)
{
	targetPowerValT2[ALL_TARGET_HT20_0_8_16] =
	    FUNC0(ah, HT_TARGET_RATE_0_8_16, freq,
					      is2GHz);
	targetPowerValT2[ALL_TARGET_HT20_1_3_9_11_17_19] =
	    FUNC0(ah, HT_TARGET_RATE_1_3_9_11_17_19,
					      freq, is2GHz);
	targetPowerValT2[ALL_TARGET_HT20_4] =
	    FUNC0(ah, HT_TARGET_RATE_4, freq,
					      is2GHz);
	targetPowerValT2[ALL_TARGET_HT20_5] =
	    FUNC0(ah, HT_TARGET_RATE_5, freq,
					      is2GHz);
	targetPowerValT2[ALL_TARGET_HT20_6] =
	    FUNC0(ah, HT_TARGET_RATE_6, freq,
					      is2GHz);
	targetPowerValT2[ALL_TARGET_HT20_7] =
	    FUNC0(ah, HT_TARGET_RATE_7, freq,
					      is2GHz);
	targetPowerValT2[ALL_TARGET_HT20_12] =
	    FUNC0(ah, HT_TARGET_RATE_12, freq,
					      is2GHz);
	targetPowerValT2[ALL_TARGET_HT20_13] =
	    FUNC0(ah, HT_TARGET_RATE_13, freq,
					      is2GHz);
	targetPowerValT2[ALL_TARGET_HT20_14] =
	    FUNC0(ah, HT_TARGET_RATE_14, freq,
					      is2GHz);
	targetPowerValT2[ALL_TARGET_HT20_15] =
	    FUNC0(ah, HT_TARGET_RATE_15, freq,
					      is2GHz);
	targetPowerValT2[ALL_TARGET_HT20_20] =
	    FUNC0(ah, HT_TARGET_RATE_20, freq,
					      is2GHz);
	targetPowerValT2[ALL_TARGET_HT20_21] =
	    FUNC0(ah, HT_TARGET_RATE_21, freq,
					      is2GHz);
	targetPowerValT2[ALL_TARGET_HT20_22] =
	    FUNC0(ah, HT_TARGET_RATE_22, freq,
					      is2GHz);
	targetPowerValT2[ALL_TARGET_HT20_23] =
	    FUNC0(ah, HT_TARGET_RATE_23, freq,
					      is2GHz);
}