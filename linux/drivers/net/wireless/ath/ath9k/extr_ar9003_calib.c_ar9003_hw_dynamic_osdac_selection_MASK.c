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
typedef  int u32 ;
struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AH_WAIT_TIMEOUT ; 
 int /*<<< orphan*/  AR_PHY_65NM_CH0_BB1 ; 
 int /*<<< orphan*/  AR_PHY_65NM_CH0_BB3 ; 
 int /*<<< orphan*/  AR_PHY_65NM_CH1_BB1 ; 
 int /*<<< orphan*/  AR_PHY_65NM_CH1_BB3 ; 
 int /*<<< orphan*/  AR_PHY_65NM_CH2_BB1 ; 
 int /*<<< orphan*/  AR_PHY_65NM_CH2_BB3 ; 
 int /*<<< orphan*/  AR_PHY_ACTIVE ; 
 int /*<<< orphan*/  AR_PHY_ACTIVE_EN ; 
 int /*<<< orphan*/  AR_PHY_AGC_CONTROL ; 
 int AR_PHY_AGC_CONTROL_CAL ; 
 int /*<<< orphan*/  AR_PHY_AGC_CONTROL_FLTR_CAL ; 
 int /*<<< orphan*/  AR_PHY_AGC_CONTROL_OFFSET_CAL ; 
 int /*<<< orphan*/  AR_PHY_AGC_CONTROL_PKDET_CAL ; 
 int /*<<< orphan*/  AR_PHY_CL_CAL_CTL ; 
 int /*<<< orphan*/  AR_PHY_CL_CAL_ENABLE ; 
 int /*<<< orphan*/  AR_PHY_TX_IQCAL_CONTROL_0 ; 
 int /*<<< orphan*/  AR_PHY_TX_IQCAL_CONTROL_0_ENABLE_TXIQ_CAL ; 
 int /*<<< orphan*/  CALIBRATE ; 
 int OFF_LOWER_LT ; 
 int OFF_UPPER_LT ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 struct ath_common* FUNC4 (struct ath_hw*) ; 
 int FUNC5 (struct ath_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_common*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static bool FUNC7(struct ath_hw *ah,
					      bool txiqcal_done)
{
	struct ath_common *common = FUNC4(ah);
	int ch0_done, osdac_ch0, dc_off_ch0_i1, dc_off_ch0_q1, dc_off_ch0_i2,
		dc_off_ch0_q2, dc_off_ch0_i3, dc_off_ch0_q3;
	int ch1_done, osdac_ch1, dc_off_ch1_i1, dc_off_ch1_q1, dc_off_ch1_i2,
		dc_off_ch1_q2, dc_off_ch1_i3, dc_off_ch1_q3;
	int ch2_done, osdac_ch2, dc_off_ch2_i1, dc_off_ch2_q1, dc_off_ch2_i2,
		dc_off_ch2_q2, dc_off_ch2_i3, dc_off_ch2_q3;
	bool status;
	u32 temp, val;

	/*
	 * Clear offset and IQ calibration, run AGC cal.
	 */
	FUNC0(ah, AR_PHY_AGC_CONTROL,
		    AR_PHY_AGC_CONTROL_OFFSET_CAL);
	FUNC0(ah, AR_PHY_TX_IQCAL_CONTROL_0,
		    AR_PHY_TX_IQCAL_CONTROL_0_ENABLE_TXIQ_CAL);
	FUNC3(ah, AR_PHY_AGC_CONTROL,
		  FUNC1(ah, AR_PHY_AGC_CONTROL) | AR_PHY_AGC_CONTROL_CAL);

	status = FUNC5(ah, AR_PHY_AGC_CONTROL,
			       AR_PHY_AGC_CONTROL_CAL,
			       0, AH_WAIT_TIMEOUT);
	if (!status) {
		FUNC6(common, CALIBRATE,
			"AGC cal without offset cal failed to complete in 1ms");
		return false;
	}

	/*
	 * Allow only offset calibration and disable the others
	 * (Carrier Leak calibration, TX Filter calibration and
	 *  Peak Detector offset calibration).
	 */
	FUNC2(ah, AR_PHY_AGC_CONTROL,
		    AR_PHY_AGC_CONTROL_OFFSET_CAL);
	FUNC0(ah, AR_PHY_CL_CAL_CTL,
		    AR_PHY_CL_CAL_ENABLE);
	FUNC0(ah, AR_PHY_AGC_CONTROL,
		    AR_PHY_AGC_CONTROL_FLTR_CAL);
	FUNC0(ah, AR_PHY_AGC_CONTROL,
		    AR_PHY_AGC_CONTROL_PKDET_CAL);

	ch0_done = 0;
	ch1_done = 0;
	ch2_done = 0;

	while ((ch0_done == 0) || (ch1_done == 0) || (ch2_done == 0)) {
		osdac_ch0 = (FUNC1(ah, AR_PHY_65NM_CH0_BB1) >> 30) & 0x3;
		osdac_ch1 = (FUNC1(ah, AR_PHY_65NM_CH1_BB1) >> 30) & 0x3;
		osdac_ch2 = (FUNC1(ah, AR_PHY_65NM_CH2_BB1) >> 30) & 0x3;

		FUNC2(ah, AR_PHY_ACTIVE, AR_PHY_ACTIVE_EN);

		FUNC3(ah, AR_PHY_AGC_CONTROL,
			  FUNC1(ah, AR_PHY_AGC_CONTROL) | AR_PHY_AGC_CONTROL_CAL);

		status = FUNC5(ah, AR_PHY_AGC_CONTROL,
				       AR_PHY_AGC_CONTROL_CAL,
				       0, AH_WAIT_TIMEOUT);
		if (!status) {
			FUNC6(common, CALIBRATE,
				"DC offset cal failed to complete in 1ms");
			return false;
		}

		FUNC0(ah, AR_PHY_ACTIVE, AR_PHY_ACTIVE_EN);

		/*
		 * High gain.
		 */
		FUNC3(ah, AR_PHY_65NM_CH0_BB3,
			  ((FUNC1(ah, AR_PHY_65NM_CH0_BB3) & 0xfffffcff) | (1 << 8)));
		FUNC3(ah, AR_PHY_65NM_CH1_BB3,
			  ((FUNC1(ah, AR_PHY_65NM_CH1_BB3) & 0xfffffcff) | (1 << 8)));
		FUNC3(ah, AR_PHY_65NM_CH2_BB3,
			  ((FUNC1(ah, AR_PHY_65NM_CH2_BB3) & 0xfffffcff) | (1 << 8)));

		temp = FUNC1(ah, AR_PHY_65NM_CH0_BB3);
		dc_off_ch0_i1 = (temp >> 26) & 0x1f;
		dc_off_ch0_q1 = (temp >> 21) & 0x1f;

		temp = FUNC1(ah, AR_PHY_65NM_CH1_BB3);
		dc_off_ch1_i1 = (temp >> 26) & 0x1f;
		dc_off_ch1_q1 = (temp >> 21) & 0x1f;

		temp = FUNC1(ah, AR_PHY_65NM_CH2_BB3);
		dc_off_ch2_i1 = (temp >> 26) & 0x1f;
		dc_off_ch2_q1 = (temp >> 21) & 0x1f;

		/*
		 * Low gain.
		 */
		FUNC3(ah, AR_PHY_65NM_CH0_BB3,
			  ((FUNC1(ah, AR_PHY_65NM_CH0_BB3) & 0xfffffcff) | (2 << 8)));
		FUNC3(ah, AR_PHY_65NM_CH1_BB3,
			  ((FUNC1(ah, AR_PHY_65NM_CH1_BB3) & 0xfffffcff) | (2 << 8)));
		FUNC3(ah, AR_PHY_65NM_CH2_BB3,
			  ((FUNC1(ah, AR_PHY_65NM_CH2_BB3) & 0xfffffcff) | (2 << 8)));

		temp = FUNC1(ah, AR_PHY_65NM_CH0_BB3);
		dc_off_ch0_i2 = (temp >> 26) & 0x1f;
		dc_off_ch0_q2 = (temp >> 21) & 0x1f;

		temp = FUNC1(ah, AR_PHY_65NM_CH1_BB3);
		dc_off_ch1_i2 = (temp >> 26) & 0x1f;
		dc_off_ch1_q2 = (temp >> 21) & 0x1f;

		temp = FUNC1(ah, AR_PHY_65NM_CH2_BB3);
		dc_off_ch2_i2 = (temp >> 26) & 0x1f;
		dc_off_ch2_q2 = (temp >> 21) & 0x1f;

		/*
		 * Loopback.
		 */
		FUNC3(ah, AR_PHY_65NM_CH0_BB3,
			  ((FUNC1(ah, AR_PHY_65NM_CH0_BB3) & 0xfffffcff) | (3 << 8)));
		FUNC3(ah, AR_PHY_65NM_CH1_BB3,
			  ((FUNC1(ah, AR_PHY_65NM_CH1_BB3) & 0xfffffcff) | (3 << 8)));
		FUNC3(ah, AR_PHY_65NM_CH2_BB3,
			  ((FUNC1(ah, AR_PHY_65NM_CH2_BB3) & 0xfffffcff) | (3 << 8)));

		temp = FUNC1(ah, AR_PHY_65NM_CH0_BB3);
		dc_off_ch0_i3 = (temp >> 26) & 0x1f;
		dc_off_ch0_q3 = (temp >> 21) & 0x1f;

		temp = FUNC1(ah, AR_PHY_65NM_CH1_BB3);
		dc_off_ch1_i3 = (temp >> 26) & 0x1f;
		dc_off_ch1_q3 = (temp >> 21) & 0x1f;

		temp = FUNC1(ah, AR_PHY_65NM_CH2_BB3);
		dc_off_ch2_i3 = (temp >> 26) & 0x1f;
		dc_off_ch2_q3 = (temp >> 21) & 0x1f;

		if ((dc_off_ch0_i1 > OFF_UPPER_LT) || (dc_off_ch0_i1 < OFF_LOWER_LT) ||
		    (dc_off_ch0_i2 > OFF_UPPER_LT) || (dc_off_ch0_i2 < OFF_LOWER_LT) ||
		    (dc_off_ch0_i3 > OFF_UPPER_LT) || (dc_off_ch0_i3 < OFF_LOWER_LT) ||
		    (dc_off_ch0_q1 > OFF_UPPER_LT) || (dc_off_ch0_q1 < OFF_LOWER_LT) ||
		    (dc_off_ch0_q2 > OFF_UPPER_LT) || (dc_off_ch0_q2 < OFF_LOWER_LT) ||
		    (dc_off_ch0_q3 > OFF_UPPER_LT) || (dc_off_ch0_q3 < OFF_LOWER_LT)) {
			if (osdac_ch0 == 3) {
				ch0_done = 1;
			} else {
				osdac_ch0++;

				val = FUNC1(ah, AR_PHY_65NM_CH0_BB1) & 0x3fffffff;
				val |= (osdac_ch0 << 30);
				FUNC3(ah, AR_PHY_65NM_CH0_BB1, val);

				ch0_done = 0;
			}
		} else {
			ch0_done = 1;
		}

		if ((dc_off_ch1_i1 > OFF_UPPER_LT) || (dc_off_ch1_i1 < OFF_LOWER_LT) ||
		    (dc_off_ch1_i2 > OFF_UPPER_LT) || (dc_off_ch1_i2 < OFF_LOWER_LT) ||
		    (dc_off_ch1_i3 > OFF_UPPER_LT) || (dc_off_ch1_i3 < OFF_LOWER_LT) ||
		    (dc_off_ch1_q1 > OFF_UPPER_LT) || (dc_off_ch1_q1 < OFF_LOWER_LT) ||
		    (dc_off_ch1_q2 > OFF_UPPER_LT) || (dc_off_ch1_q2 < OFF_LOWER_LT) ||
		    (dc_off_ch1_q3 > OFF_UPPER_LT) || (dc_off_ch1_q3 < OFF_LOWER_LT)) {
			if (osdac_ch1 == 3) {
				ch1_done = 1;
			} else {
				osdac_ch1++;

				val = FUNC1(ah, AR_PHY_65NM_CH1_BB1) & 0x3fffffff;
				val |= (osdac_ch1 << 30);
				FUNC3(ah, AR_PHY_65NM_CH1_BB1, val);

				ch1_done = 0;
			}
		} else {
			ch1_done = 1;
		}

		if ((dc_off_ch2_i1 > OFF_UPPER_LT) || (dc_off_ch2_i1 < OFF_LOWER_LT) ||
		    (dc_off_ch2_i2 > OFF_UPPER_LT) || (dc_off_ch2_i2 < OFF_LOWER_LT) ||
		    (dc_off_ch2_i3 > OFF_UPPER_LT) || (dc_off_ch2_i3 < OFF_LOWER_LT) ||
		    (dc_off_ch2_q1 > OFF_UPPER_LT) || (dc_off_ch2_q1 < OFF_LOWER_LT) ||
		    (dc_off_ch2_q2 > OFF_UPPER_LT) || (dc_off_ch2_q2 < OFF_LOWER_LT) ||
		    (dc_off_ch2_q3 > OFF_UPPER_LT) || (dc_off_ch2_q3 < OFF_LOWER_LT)) {
			if (osdac_ch2 == 3) {
				ch2_done = 1;
			} else {
				osdac_ch2++;

				val = FUNC1(ah, AR_PHY_65NM_CH2_BB1) & 0x3fffffff;
				val |= (osdac_ch2 << 30);
				FUNC3(ah, AR_PHY_65NM_CH2_BB1, val);

				ch2_done = 0;
			}
		} else {
			ch2_done = 1;
		}
	}

	FUNC0(ah, AR_PHY_AGC_CONTROL,
		    AR_PHY_AGC_CONTROL_OFFSET_CAL);
	FUNC2(ah, AR_PHY_ACTIVE, AR_PHY_ACTIVE_EN);

	/*
	 * We don't need to check txiqcal_done here since it is always
	 * set for AR9550.
	 */
	FUNC2(ah, AR_PHY_TX_IQCAL_CONTROL_0,
		    AR_PHY_TX_IQCAL_CONTROL_0_ENABLE_TXIQ_CAL);

	return true;
}