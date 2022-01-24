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
struct ath_hw {int dummy; } ;
struct ath9k_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR9300_11NA_HT_DS_SHIFT ; 
 int /*<<< orphan*/  AR9300_11NA_HT_SS_SHIFT ; 
 int /*<<< orphan*/  AR9300_11NA_HT_TS_SHIFT ; 
 int /*<<< orphan*/  AR9300_11NA_OFDM_SHIFT ; 
 int /*<<< orphan*/  AR9300_11NG_HT_DS_SHIFT ; 
 int /*<<< orphan*/  AR9300_11NG_HT_SS_SHIFT ; 
 int /*<<< orphan*/  AR9300_11NG_HT_TS_SHIFT ; 
 int /*<<< orphan*/  AR9300_11NG_OFDM_SHIFT ; 
 scalar_t__ FUNC0 (struct ath9k_channel*) ; 
 scalar_t__ FUNC1 (struct ath9k_channel*) ; 
 scalar_t__ FUNC2 (struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7(struct ath_hw *ah, u8 *rate_array,
				 struct ath9k_channel *chan)
{
	if (FUNC0(chan)) {
		FUNC5(ah, rate_array,
					    AR9300_11NA_OFDM_SHIFT);
		if (FUNC1(chan) || FUNC2(chan)) {
			FUNC4(ah, rate_array,
						  AR9300_11NA_HT_SS_SHIFT,
						  AR9300_11NA_HT_DS_SHIFT,
						  AR9300_11NA_HT_TS_SHIFT,
						  FUNC2(chan));
			FUNC6(ah,
						    AR9300_11NA_HT_SS_SHIFT,
						    AR9300_11NA_HT_DS_SHIFT,
						    AR9300_11NA_HT_TS_SHIFT);
		}
	} else {
		FUNC3(ah, rate_array);
		FUNC5(ah, rate_array,
					    AR9300_11NG_OFDM_SHIFT);
		if (FUNC1(chan) || FUNC2(chan)) {
			FUNC4(ah, rate_array,
						  AR9300_11NG_HT_SS_SHIFT,
						  AR9300_11NG_HT_DS_SHIFT,
						  AR9300_11NG_HT_TS_SHIFT,
						  FUNC2(chan));
			FUNC6(ah,
						    AR9300_11NG_HT_SS_SHIFT,
						    AR9300_11NG_HT_DS_SHIFT,
						    AR9300_11NG_HT_TS_SHIFT);
		}
	}
}