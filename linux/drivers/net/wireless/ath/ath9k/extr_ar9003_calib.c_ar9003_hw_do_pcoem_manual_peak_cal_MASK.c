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
struct ath_hw {int rxchainmask; TYPE_1__ caps; struct ath9k_hw_cal_data* caldata; } ;
struct ath9k_hw_cal_data {void** caldac; int /*<<< orphan*/  cal_flags; } ;
struct ath9k_channel {int dummy; } ;

/* Variables and functions */
 int AR9300_MAX_CHAINS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  AR_PHY_65NM_RXRF_AGC_AGC2G_CALDAC_OVR ; 
 int /*<<< orphan*/  AR_PHY_65NM_RXRF_AGC_AGC5G_CALDAC_OVR ; 
 int ATH9K_HW_CAP_RTT ; 
 scalar_t__ FUNC1 (struct ath9k_channel*) ; 
 void* FUNC2 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SW_PKDET_DONE ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ath_hw *ah,
					       struct ath9k_channel *chan,
					       bool run_rtt_cal)
{
	struct ath9k_hw_cal_data *caldata = ah->caldata;
	int i;

	if ((ah->caps.hw_caps & ATH9K_HW_CAP_RTT) && !run_rtt_cal)
		return;

	for (i = 0; i < AR9300_MAX_CHAINS; i++) {
		if (!(ah->rxchainmask & (1 << i)))
			continue;
		FUNC3(ah, i, FUNC1(chan));
	}

	if (caldata)
		FUNC4(SW_PKDET_DONE, &caldata->cal_flags);

	if ((ah->caps.hw_caps & ATH9K_HW_CAP_RTT) && caldata) {
		if (FUNC1(chan)){
			caldata->caldac[0] = FUNC2(ah,
						    FUNC0(0),
						    AR_PHY_65NM_RXRF_AGC_AGC2G_CALDAC_OVR);
			caldata->caldac[1] = FUNC2(ah,
						    FUNC0(1),
						    AR_PHY_65NM_RXRF_AGC_AGC2G_CALDAC_OVR);
		} else {
			caldata->caldac[0] = FUNC2(ah,
						    FUNC0(0),
						    AR_PHY_65NM_RXRF_AGC_AGC5G_CALDAC_OVR);
			caldata->caldac[1] = FUNC2(ah,
						    FUNC0(1),
						    AR_PHY_65NM_RXRF_AGC_AGC5G_CALDAC_OVR);
		}
	}
}