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
struct ath_hw {int dummy; } ;
struct ath9k_channel {int dummy; } ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  AR5008_11NA_HT_DS_SHIFT ; 
 int /*<<< orphan*/  AR5008_11NA_HT_SS_SHIFT ; 
 int /*<<< orphan*/  AR5008_11NA_OFDM_SHIFT ; 
 int /*<<< orphan*/  AR5008_11NG_HT_DS_SHIFT ; 
 int /*<<< orphan*/  AR5008_11NG_HT_SS_SHIFT ; 
 int /*<<< orphan*/  AR5008_11NG_OFDM_SHIFT ; 
 scalar_t__ FUNC0 (struct ath9k_channel*) ; 
 scalar_t__ FUNC1 (struct ath9k_channel*) ; 
 scalar_t__ FUNC2 (struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC6(struct ath_hw *ah, int16_t *rate_array,
				 struct ath9k_channel *chan, int ht40_delta)
{
	if (FUNC0(chan)) {
		FUNC5(ah, rate_array,
					    AR5008_11NA_OFDM_SHIFT);
		if (FUNC1(chan) || FUNC2(chan)) {
			FUNC4(ah, rate_array,
						  AR5008_11NA_HT_SS_SHIFT,
						  AR5008_11NA_HT_DS_SHIFT,
						  FUNC2(chan),
						  ht40_delta);
		}
	} else {
		FUNC3(ah, rate_array);
		FUNC5(ah, rate_array,
					    AR5008_11NG_OFDM_SHIFT);
		if (FUNC1(chan) || FUNC2(chan)) {
			FUNC4(ah, rate_array,
						  AR5008_11NG_HT_SS_SHIFT,
						  AR5008_11NG_HT_DS_SHIFT,
						  FUNC2(chan),
						  ht40_delta);
		}
	}
}