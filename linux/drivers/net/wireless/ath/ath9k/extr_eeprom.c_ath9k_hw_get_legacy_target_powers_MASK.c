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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u16 ;
struct chan_centers {scalar_t__ ext_center; scalar_t__ ctl_center; } ;
struct cal_target_power_leg {scalar_t__ bChannel; scalar_t__* tPow2x; } ;
struct ath_hw {int dummy; } ;
struct ath9k_channel {int dummy; } ;

/* Variables and functions */
 scalar_t__ AR5416_BCHAN_UNUSED ; 
 int /*<<< orphan*/  FUNC0 (struct ath9k_channel*) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,struct ath9k_channel*,struct chan_centers*) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 

void FUNC4(struct ath_hw *ah,
				       struct ath9k_channel *chan,
				       struct cal_target_power_leg *powInfo,
				       u16 numChannels,
				       struct cal_target_power_leg *pNewPower,
				       u16 numRates, bool isExtTarget)
{
	struct chan_centers centers;
	u16 clo, chi;
	int i;
	int matchIndex = -1, lowIndex = -1;
	u16 freq;

	FUNC2(ah, chan, &centers);
	freq = (isExtTarget) ? centers.ext_center : centers.ctl_center;

	if (freq <= FUNC1(powInfo[0].bChannel,
				       FUNC0(chan))) {
		matchIndex = 0;
	} else {
		for (i = 0; (i < numChannels) &&
			     (powInfo[i].bChannel != AR5416_BCHAN_UNUSED); i++) {
			if (freq == FUNC1(powInfo[i].bChannel,
						       FUNC0(chan))) {
				matchIndex = i;
				break;
			} else if (freq < FUNC1(powInfo[i].bChannel,
						FUNC0(chan)) && i > 0 &&
				   freq > FUNC1(powInfo[i - 1].bChannel,
						FUNC0(chan))) {
				lowIndex = i - 1;
				break;
			}
		}
		if ((matchIndex == -1) && (lowIndex == -1))
			matchIndex = i - 1;
	}

	if (matchIndex != -1) {
		*pNewPower = powInfo[matchIndex];
	} else {
		clo = FUNC1(powInfo[lowIndex].bChannel,
					 FUNC0(chan));
		chi = FUNC1(powInfo[lowIndex + 1].bChannel,
					 FUNC0(chan));

		for (i = 0; i < numRates; i++) {
			pNewPower->tPow2x[i] =
				(u8)FUNC3(freq, clo, chi,
						powInfo[lowIndex].tPow2x[i],
						powInfo[lowIndex + 1].tPow2x[i]);
		}
	}
}