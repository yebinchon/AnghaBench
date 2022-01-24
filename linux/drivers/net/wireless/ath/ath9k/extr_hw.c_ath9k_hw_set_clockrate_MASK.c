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
struct TYPE_2__ {int hw_caps; } ;
struct ath_hw {TYPE_1__ caps; struct ath9k_channel* curchan; } ;
struct ath_common {unsigned int clockrate; } ;
struct ath9k_channel {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 unsigned int ATH9K_CLOCK_FAST_RATE_5GHZ_OFDM ; 
 unsigned int ATH9K_CLOCK_RATE_2GHZ_OFDM ; 
 unsigned int ATH9K_CLOCK_RATE_5GHZ_OFDM ; 
 unsigned int ATH9K_CLOCK_RATE_CCK ; 
 int ATH9K_HW_CAP_FASTCLOCK ; 
 scalar_t__ FUNC2 (struct ath9k_channel*) ; 
 scalar_t__ FUNC3 (struct ath9k_channel*) ; 
 scalar_t__ FUNC4 (struct ath9k_channel*) ; 
 scalar_t__ FUNC5 (struct ath9k_channel*) ; 
 struct ath_common* FUNC6 (struct ath_hw*) ; 

__attribute__((used)) static void FUNC7(struct ath_hw *ah)
{
	struct ath_common *common = FUNC6(ah);
	struct ath9k_channel *chan = ah->curchan;
	unsigned int clockrate;

	/* AR9287 v1.3+ uses async FIFO and runs the MAC at 117 MHz */
	if (FUNC0(ah) && FUNC1(ah))
		clockrate = 117;
	else if (!chan) /* should really check for CCK instead */
		clockrate = ATH9K_CLOCK_RATE_CCK;
	else if (FUNC2(chan))
		clockrate = ATH9K_CLOCK_RATE_2GHZ_OFDM;
	else if (ah->caps.hw_caps & ATH9K_HW_CAP_FASTCLOCK)
		clockrate = ATH9K_CLOCK_FAST_RATE_5GHZ_OFDM;
	else
		clockrate = ATH9K_CLOCK_RATE_5GHZ_OFDM;

	if (chan) {
		if (FUNC4(chan))
			clockrate *= 2;
		if (FUNC3(chan))
			clockrate /= 2;
		if (FUNC5(chan))
			clockrate /= 4;
	}

	common->clockrate = clockrate;
}