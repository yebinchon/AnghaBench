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
struct ath_hw {TYPE_1__* caldata; } ;
struct ath9k_channel {int dummy; } ;
struct TYPE_2__ {int* caldac; int /*<<< orphan*/  cal_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  AR_PHY_65NM_RXRF_AGC_AGC2G_CALDAC_OVR ; 
 int /*<<< orphan*/  AR_PHY_65NM_RXRF_AGC_AGC5G_CALDAC_OVR ; 
 int /*<<< orphan*/  AR_PHY_65NM_RXRF_AGC_AGC_OVERRIDE ; 
 scalar_t__ FUNC1 (struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RTT_DONE ; 
 int /*<<< orphan*/  SW_PKDET_DONE ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*) ; 
 int FUNC5 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

bool FUNC13(struct ath_hw *ah, struct ath9k_channel *chan)
{
	bool restore;

	if (!ah->caldata)
		return false;

	if (FUNC12(SW_PKDET_DONE, &ah->caldata->cal_flags)) {
		if (FUNC1(chan)){
			FUNC2(ah, FUNC0(0),
				      AR_PHY_65NM_RXRF_AGC_AGC2G_CALDAC_OVR,
				      ah->caldata->caldac[0]);
			FUNC2(ah, FUNC0(1),
				      AR_PHY_65NM_RXRF_AGC_AGC2G_CALDAC_OVR,
				      ah->caldata->caldac[1]);
		} else {
			FUNC2(ah, FUNC0(0),
				      AR_PHY_65NM_RXRF_AGC_AGC5G_CALDAC_OVR,
				      ah->caldata->caldac[0]);
			FUNC2(ah, FUNC0(1),
				      AR_PHY_65NM_RXRF_AGC_AGC5G_CALDAC_OVR,
				      ah->caldata->caldac[1]);
		}
		FUNC2(ah, FUNC0(1),
			      AR_PHY_65NM_RXRF_AGC_AGC_OVERRIDE, 0x1);
		FUNC2(ah, FUNC0(0),
			      AR_PHY_65NM_RXRF_AGC_AGC_OVERRIDE, 0x1);
	}

	if (!FUNC12(RTT_DONE, &ah->caldata->cal_flags))
		return false;

	FUNC4(ah);

	if (FUNC12(SW_PKDET_DONE, &ah->caldata->cal_flags))
		FUNC7(ah, 0x30);
	else
		FUNC7(ah, 0x10);

	if (!FUNC10(ah)) {
		FUNC11(FUNC8(ah), "Could not stop baseband\n");
		restore = false;
		goto fail;
	}

	FUNC6(ah);
	restore = FUNC5(ah);

fail:
	FUNC9(ah);
	FUNC3(ah);
	return restore;
}