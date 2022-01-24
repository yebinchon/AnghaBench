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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AR_PHY_65NM_RXRF_AGC_AGC2G_CALDAC_OVR ; 
 int /*<<< orphan*/  AR_PHY_65NM_RXRF_AGC_AGC2G_DBDAC_OVR ; 
 int /*<<< orphan*/  AR_PHY_65NM_RXRF_AGC_AGC5G_CALDAC_OVR ; 
 int /*<<< orphan*/  AR_PHY_65NM_RXRF_AGC_AGC5G_DBDAC_OVR ; 
 int /*<<< orphan*/  AR_PHY_65NM_RXRF_AGC_AGC_CAL_OVR ; 
 int /*<<< orphan*/  AR_PHY_65NM_RXRF_AGC_AGC_ON_OVR ; 
 int /*<<< orphan*/  AR_PHY_65NM_RXRF_AGC_AGC_OUT ; 
 int /*<<< orphan*/  AR_PHY_65NM_RXRF_AGC_AGC_OVERRIDE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AR_PHY_65NM_RXRF_GAINSTAGES_LNA2G_GAIN_OVR ; 
 int /*<<< orphan*/  AR_PHY_65NM_RXRF_GAINSTAGES_LNA5G_GAIN_OVR ; 
 int /*<<< orphan*/  AR_PHY_65NM_RXRF_GAINSTAGES_LNAON_CALDC ; 
 int /*<<< orphan*/  AR_PHY_65NM_RXRF_GAINSTAGES_RX_OVERRIDE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AR_PHY_65NM_RXTX2_RXON ; 
 int /*<<< orphan*/  AR_PHY_65NM_RXTX2_RXON_OVR ; 
 scalar_t__ FUNC3 (struct ath_hw*) ; 
 scalar_t__ FUNC4 (struct ath_hw*) ; 
 scalar_t__ FUNC5 (struct ath_hw*) ; 
 scalar_t__ FUNC6 (struct ath_hw*) ; 
 scalar_t__ FUNC7 (struct ath_hw*) ; 
 int FUNC8 (int) ; 
 int FUNC9 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static void FUNC12(struct ath_hw *ah, u8 chain, bool is_2g)
{
	int offset[8] = {0}, total = 0, test;
	int agc_out, i, peak_detect_threshold = 0;

	if (FUNC6(ah) || FUNC5(ah))
		peak_detect_threshold = 8;
	else if (FUNC7(ah))
		peak_detect_threshold = 11;

	/*
	 * Turn off LNA/SW.
	 */
	FUNC10(ah, FUNC1(chain),
		      AR_PHY_65NM_RXRF_GAINSTAGES_RX_OVERRIDE, 0x1);
	FUNC10(ah, FUNC1(chain),
		      AR_PHY_65NM_RXRF_GAINSTAGES_LNAON_CALDC, 0x0);

	if (FUNC3(ah) || FUNC4(ah)) {
		if (is_2g)
			FUNC10(ah, FUNC1(chain),
				      AR_PHY_65NM_RXRF_GAINSTAGES_LNA2G_GAIN_OVR, 0x0);
		else
			FUNC10(ah, FUNC1(chain),
				      AR_PHY_65NM_RXRF_GAINSTAGES_LNA5G_GAIN_OVR, 0x0);
	}

	/*
	 * Turn off RXON.
	 */
	FUNC10(ah, FUNC2(chain),
		      AR_PHY_65NM_RXTX2_RXON_OVR, 0x1);
	FUNC10(ah, FUNC2(chain),
		      AR_PHY_65NM_RXTX2_RXON, 0x0);

	/*
	 * Turn on AGC for cal.
	 */
	FUNC10(ah, FUNC0(chain),
		      AR_PHY_65NM_RXRF_AGC_AGC_OVERRIDE, 0x1);
	FUNC10(ah, FUNC0(chain),
		      AR_PHY_65NM_RXRF_AGC_AGC_ON_OVR, 0x1);
	FUNC10(ah, FUNC0(chain),
		      AR_PHY_65NM_RXRF_AGC_AGC_CAL_OVR, 0x1);

	if (FUNC4(ah))
		FUNC10(ah, FUNC0(chain),
			      AR_PHY_65NM_RXRF_AGC_AGC2G_CALDAC_OVR, 0x0);

	if (is_2g)
		FUNC10(ah, FUNC0(chain),
			      AR_PHY_65NM_RXRF_AGC_AGC2G_DBDAC_OVR,
			      peak_detect_threshold);
	else
		FUNC10(ah, FUNC0(chain),
			      AR_PHY_65NM_RXRF_AGC_AGC5G_DBDAC_OVR,
			      peak_detect_threshold);

	for (i = 6; i > 0; i--) {
		offset[i] = FUNC8(i - 1);
		test = total + offset[i];

		if (is_2g)
			FUNC10(ah, FUNC0(chain),
				      AR_PHY_65NM_RXRF_AGC_AGC2G_CALDAC_OVR,
				      test);
		else
			FUNC10(ah, FUNC0(chain),
				      AR_PHY_65NM_RXRF_AGC_AGC5G_CALDAC_OVR,
				      test);
		FUNC11(100);
		agc_out = FUNC9(ah, FUNC0(chain),
					 AR_PHY_65NM_RXRF_AGC_AGC_OUT);
		offset[i] = (agc_out) ? 0 : 1;
		total += (offset[i] << (i - 1));
	}

	if (is_2g)
		FUNC10(ah, FUNC0(chain),
			      AR_PHY_65NM_RXRF_AGC_AGC2G_CALDAC_OVR, total);
	else
		FUNC10(ah, FUNC0(chain),
			      AR_PHY_65NM_RXRF_AGC_AGC5G_CALDAC_OVR, total);

	/*
	 * Turn on LNA.
	 */
	FUNC10(ah, FUNC1(chain),
		      AR_PHY_65NM_RXRF_GAINSTAGES_RX_OVERRIDE, 0);
	/*
	 * Turn off RXON.
	 */
	FUNC10(ah, FUNC2(chain),
		      AR_PHY_65NM_RXTX2_RXON_OVR, 0);
	/*
	 * Turn off peak detect calibration.
	 */
	FUNC10(ah, FUNC0(chain),
		      AR_PHY_65NM_RXRF_AGC_AGC_CAL_OVR, 0);
}