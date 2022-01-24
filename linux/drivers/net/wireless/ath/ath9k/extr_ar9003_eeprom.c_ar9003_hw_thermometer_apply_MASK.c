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
typedef  int u8 ;
struct ath9k_hw_capabilities {int chip_chainmask; } ;
struct ath_hw {struct ath9k_hw_capabilities caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PHY_65NM_CH0_RXTX4 ; 
 int /*<<< orphan*/  AR_PHY_65NM_CH0_RXTX4_THERM_ON ; 
 int /*<<< orphan*/  AR_PHY_65NM_CH0_RXTX4_THERM_ON_OVR ; 
 int /*<<< orphan*/  AR_PHY_65NM_CH1_RXTX4 ; 
 int /*<<< orphan*/  AR_PHY_65NM_CH2_RXTX4 ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct ath_hw*) ; 

__attribute__((used)) static void FUNC3(struct ath_hw *ah)
{
	struct ath9k_hw_capabilities *pCap = &ah->caps;
	int thermometer = FUNC2(ah);
	u8 therm_on = (thermometer < 0) ? 0 : 1;

	FUNC1(ah, AR_PHY_65NM_CH0_RXTX4,
		      AR_PHY_65NM_CH0_RXTX4_THERM_ON_OVR, therm_on);
	if (pCap->chip_chainmask & FUNC0(1))
		FUNC1(ah, AR_PHY_65NM_CH1_RXTX4,
			      AR_PHY_65NM_CH0_RXTX4_THERM_ON_OVR, therm_on);
	if (pCap->chip_chainmask & FUNC0(2))
		FUNC1(ah, AR_PHY_65NM_CH2_RXTX4,
			      AR_PHY_65NM_CH0_RXTX4_THERM_ON_OVR, therm_on);

	therm_on = thermometer == 0;
	FUNC1(ah, AR_PHY_65NM_CH0_RXTX4,
		      AR_PHY_65NM_CH0_RXTX4_THERM_ON, therm_on);
	if (pCap->chip_chainmask & FUNC0(1)) {
		therm_on = thermometer == 1;
		FUNC1(ah, AR_PHY_65NM_CH1_RXTX4,
			      AR_PHY_65NM_CH0_RXTX4_THERM_ON, therm_on);
	}
	if (pCap->chip_chainmask & FUNC0(2)) {
		therm_on = thermometer == 2;
		FUNC1(ah, AR_PHY_65NM_CH2_RXTX4,
			      AR_PHY_65NM_CH0_RXTX4_THERM_ON, therm_on);
	}
}