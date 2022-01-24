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
typedef  int u32 ;
struct TYPE_2__ {int max_txchains; } ;
struct ath_hw {int paprd_ratemask; int paprd_target_power; int paprd_training_power; int paprd_ratemask_ht40; int /*<<< orphan*/  curchan; TYPE_1__ caps; } ;
struct ath_common {int dummy; } ;

/* Variables and functions */
 int const AR_PHY_PAPRD_AM2AM ; 
 int /*<<< orphan*/  AR_PHY_PAPRD_AM2AM_MASK ; 
 int const AR_PHY_PAPRD_AM2PM ; 
 int /*<<< orphan*/  AR_PHY_PAPRD_AM2PM_MASK ; 
#define  AR_PHY_PAPRD_CTRL0_B0 133 
#define  AR_PHY_PAPRD_CTRL0_B1 132 
#define  AR_PHY_PAPRD_CTRL0_B2 131 
 int /*<<< orphan*/  AR_PHY_PAPRD_CTRL0_PAPRD_MAG_THRSH ; 
 int /*<<< orphan*/  AR_PHY_PAPRD_CTRL0_USE_SINGLE_TABLE_MASK ; 
 int /*<<< orphan*/  AR_PHY_PAPRD_CTRL1_ADAPTIVE_AM2AM_ENABLE ; 
 int /*<<< orphan*/  AR_PHY_PAPRD_CTRL1_ADAPTIVE_AM2PM_ENABLE ; 
 int /*<<< orphan*/  AR_PHY_PAPRD_CTRL1_ADAPTIVE_SCALING_ENA ; 
#define  AR_PHY_PAPRD_CTRL1_B0 130 
#define  AR_PHY_PAPRD_CTRL1_B1 129 
#define  AR_PHY_PAPRD_CTRL1_B2 128 
 int /*<<< orphan*/  AR_PHY_PAPRD_CTRL1_PAPRD_MAG_SCALE_FACT ; 
 int /*<<< orphan*/  AR_PHY_PAPRD_CTRL1_PA_GAIN_SCALE_FACT_MASK ; 
 int const AR_PHY_PAPRD_HT40 ; 
 int /*<<< orphan*/  AR_PHY_PAPRD_HT40_MASK ; 
 int const AR_PHY_PAPRD_PRE_POST_SCALE_0_B0 ; 
 int const AR_PHY_PAPRD_PRE_POST_SCALE_1_B0 ; 
 int const AR_PHY_PAPRD_PRE_POST_SCALE_2_B0 ; 
 int const AR_PHY_PAPRD_PRE_POST_SCALE_3_B0 ; 
 int const AR_PHY_PAPRD_PRE_POST_SCALE_4_B0 ; 
 int const AR_PHY_PAPRD_PRE_POST_SCALE_5_B0 ; 
 int const AR_PHY_PAPRD_PRE_POST_SCALE_6_B0 ; 
 int const AR_PHY_PAPRD_PRE_POST_SCALE_7_B0 ; 
 int /*<<< orphan*/  AR_PHY_PAPRD_PRE_POST_SCALING ; 
 int const AR_PHY_PAPRD_TRAINER_CNTL1 ; 
 int /*<<< orphan*/  AR_PHY_PAPRD_TRAINER_CNTL1_CF_CF_PAPRD_TRAIN_ENABLE ; 
 int /*<<< orphan*/  AR_PHY_PAPRD_TRAINER_CNTL1_CF_PAPRD_AGC2_SETTLING ; 
 int /*<<< orphan*/  AR_PHY_PAPRD_TRAINER_CNTL1_CF_PAPRD_IQCORR_ENABLE ; 
 int /*<<< orphan*/  AR_PHY_PAPRD_TRAINER_CNTL1_CF_PAPRD_LB_ENABLE ; 
 int /*<<< orphan*/  AR_PHY_PAPRD_TRAINER_CNTL1_CF_PAPRD_LB_SKIP ; 
 int /*<<< orphan*/  AR_PHY_PAPRD_TRAINER_CNTL1_CF_PAPRD_RX_BB_GAIN_FORCE ; 
 int /*<<< orphan*/  AR_PHY_PAPRD_TRAINER_CNTL1_CF_PAPRD_TX_GAIN_FORCE ; 
 int const AR_PHY_PAPRD_TRAINER_CNTL2 ; 
 int /*<<< orphan*/  AR_PHY_PAPRD_TRAINER_CNTL2_CF_PAPRD_INIT_RX_BB_GAIN ; 
 int const AR_PHY_PAPRD_TRAINER_CNTL3 ; 
 int /*<<< orphan*/  AR_PHY_PAPRD_TRAINER_CNTL3_CF_PAPRD_ADC_DESIRED_SIZE ; 
 int /*<<< orphan*/  AR_PHY_PAPRD_TRAINER_CNTL3_CF_PAPRD_BBTXMIX_DISABLE ; 
 int /*<<< orphan*/  AR_PHY_PAPRD_TRAINER_CNTL3_CF_PAPRD_COARSE_CORR_LEN ; 
 int /*<<< orphan*/  AR_PHY_PAPRD_TRAINER_CNTL3_CF_PAPRD_FINE_CORR_LEN ; 
 int /*<<< orphan*/  AR_PHY_PAPRD_TRAINER_CNTL3_CF_PAPRD_MIN_LOOPBACK_DEL ; 
 int /*<<< orphan*/  AR_PHY_PAPRD_TRAINER_CNTL3_CF_PAPRD_NUM_CORR_STAGES ; 
 int /*<<< orphan*/  AR_PHY_PAPRD_TRAINER_CNTL3_CF_PAPRD_QUICK_DROP ; 
 int const AR_PHY_PAPRD_TRAINER_CNTL4 ; 
 int /*<<< orphan*/  AR_PHY_PAPRD_TRAINER_CNTL4_CF_PAPRD_MIN_CORR ; 
 int /*<<< orphan*/  AR_PHY_PAPRD_TRAINER_CNTL4_CF_PAPRD_NUM_TRAIN_SAMPLES ; 
 int /*<<< orphan*/  AR_PHY_PAPRD_TRAINER_CNTL4_CF_PAPRD_SAFETY_DELTA ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 
 scalar_t__ FUNC3 (struct ath_hw*) ; 
 scalar_t__ FUNC4 (struct ath_hw*) ; 
 scalar_t__ FUNC5 (struct ath_hw*) ; 
 int /*<<< orphan*/  CALIBRATE ; 
 int ERANGE ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hw*,int const,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct ath_hw*) ; 
 int FUNC9 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_hw*,int) ; 
 struct ath_common* FUNC11 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC12 (struct ath_common*,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC13(struct ath_hw *ah)
{
	struct ath_common *common = FUNC11(ah);
	static const u32 ctrl0[3] = {
		AR_PHY_PAPRD_CTRL0_B0,
		AR_PHY_PAPRD_CTRL0_B1,
		AR_PHY_PAPRD_CTRL0_B2
	};
	static const u32 ctrl1[3] = {
		AR_PHY_PAPRD_CTRL1_B0,
		AR_PHY_PAPRD_CTRL1_B1,
		AR_PHY_PAPRD_CTRL1_B2
	};
	int training_power;
	int i, val;
	u32 am2pm_mask = ah->paprd_ratemask;

	if (FUNC6(ah->curchan))
		training_power = FUNC8(ah);
	else
		training_power = FUNC9(ah);

	FUNC12(common, CALIBRATE, "Training power: %d, Target power: %d\n",
		training_power, ah->paprd_target_power);

	if (training_power < 0) {
		FUNC12(common, CALIBRATE,
			"PAPRD target power delta out of range\n");
		return -ERANGE;
	}
	ah->paprd_training_power = training_power;

	if (FUNC0(ah))
		am2pm_mask = 0;

	FUNC7(ah, AR_PHY_PAPRD_AM2AM, AR_PHY_PAPRD_AM2AM_MASK,
		      ah->paprd_ratemask);
	FUNC7(ah, AR_PHY_PAPRD_AM2PM, AR_PHY_PAPRD_AM2PM_MASK,
		      am2pm_mask);
	FUNC7(ah, AR_PHY_PAPRD_HT40, AR_PHY_PAPRD_HT40_MASK,
		      ah->paprd_ratemask_ht40);

	FUNC12(common, CALIBRATE, "PAPRD HT20 mask: 0x%x, HT40 mask: 0x%x\n",
		ah->paprd_ratemask, ah->paprd_ratemask_ht40);

	for (i = 0; i < ah->caps.max_txchains; i++) {
		FUNC7(ah, ctrl0[i],
			      AR_PHY_PAPRD_CTRL0_USE_SINGLE_TABLE_MASK, 1);
		FUNC7(ah, ctrl1[i],
			      AR_PHY_PAPRD_CTRL1_ADAPTIVE_AM2PM_ENABLE, 1);
		FUNC7(ah, ctrl1[i],
			      AR_PHY_PAPRD_CTRL1_ADAPTIVE_AM2AM_ENABLE, 1);
		FUNC7(ah, ctrl1[i],
			      AR_PHY_PAPRD_CTRL1_ADAPTIVE_SCALING_ENA, 0);
		FUNC7(ah, ctrl1[i],
			      AR_PHY_PAPRD_CTRL1_PA_GAIN_SCALE_FACT_MASK, 181);
		FUNC7(ah, ctrl1[i],
			      AR_PHY_PAPRD_CTRL1_PAPRD_MAG_SCALE_FACT, 361);
		FUNC7(ah, ctrl1[i],
			      AR_PHY_PAPRD_CTRL1_ADAPTIVE_SCALING_ENA, 0);
		FUNC7(ah, ctrl0[i],
			      AR_PHY_PAPRD_CTRL0_PAPRD_MAG_THRSH, 3);
	}

	FUNC10(ah, false);

	FUNC7(ah, AR_PHY_PAPRD_TRAINER_CNTL1,
		      AR_PHY_PAPRD_TRAINER_CNTL1_CF_PAPRD_LB_SKIP, 0x30);
	FUNC7(ah, AR_PHY_PAPRD_TRAINER_CNTL1,
		      AR_PHY_PAPRD_TRAINER_CNTL1_CF_PAPRD_LB_ENABLE, 1);
	FUNC7(ah, AR_PHY_PAPRD_TRAINER_CNTL1,
		      AR_PHY_PAPRD_TRAINER_CNTL1_CF_PAPRD_TX_GAIN_FORCE, 1);
	FUNC7(ah, AR_PHY_PAPRD_TRAINER_CNTL1,
		      AR_PHY_PAPRD_TRAINER_CNTL1_CF_PAPRD_RX_BB_GAIN_FORCE, 0);
	FUNC7(ah, AR_PHY_PAPRD_TRAINER_CNTL1,
		      AR_PHY_PAPRD_TRAINER_CNTL1_CF_PAPRD_IQCORR_ENABLE, 0);
	FUNC7(ah, AR_PHY_PAPRD_TRAINER_CNTL1,
		      AR_PHY_PAPRD_TRAINER_CNTL1_CF_PAPRD_AGC2_SETTLING, 28);
	FUNC7(ah, AR_PHY_PAPRD_TRAINER_CNTL1,
		      AR_PHY_PAPRD_TRAINER_CNTL1_CF_CF_PAPRD_TRAIN_ENABLE, 1);

	if (FUNC3(ah)) {
		val = 148;
	} else {
		if (FUNC6(ah->curchan)) {
			if (FUNC2(ah) || FUNC5(ah))
				val = 145;
			else
				val = 147;
		} else {
			val = 137;
		}
	}

	FUNC7(ah, AR_PHY_PAPRD_TRAINER_CNTL2,
		      AR_PHY_PAPRD_TRAINER_CNTL2_CF_PAPRD_INIT_RX_BB_GAIN, val);
	FUNC7(ah, AR_PHY_PAPRD_TRAINER_CNTL3,
		      AR_PHY_PAPRD_TRAINER_CNTL3_CF_PAPRD_FINE_CORR_LEN, 4);
	FUNC7(ah, AR_PHY_PAPRD_TRAINER_CNTL3,
		      AR_PHY_PAPRD_TRAINER_CNTL3_CF_PAPRD_COARSE_CORR_LEN, 4);
	FUNC7(ah, AR_PHY_PAPRD_TRAINER_CNTL3,
		      AR_PHY_PAPRD_TRAINER_CNTL3_CF_PAPRD_NUM_CORR_STAGES, 7);
	FUNC7(ah, AR_PHY_PAPRD_TRAINER_CNTL3,
		      AR_PHY_PAPRD_TRAINER_CNTL3_CF_PAPRD_MIN_LOOPBACK_DEL, 1);

	if (FUNC3(ah) ||
	    FUNC2(ah) ||
	    FUNC5(ah) ||
	    FUNC4(ah) ||
	    FUNC0(ah) ||
	    FUNC1(ah))
		FUNC7(ah, AR_PHY_PAPRD_TRAINER_CNTL3,
			      AR_PHY_PAPRD_TRAINER_CNTL3_CF_PAPRD_QUICK_DROP, -3);
	else
		FUNC7(ah, AR_PHY_PAPRD_TRAINER_CNTL3,
			      AR_PHY_PAPRD_TRAINER_CNTL3_CF_PAPRD_QUICK_DROP, -6);

	val = -10;

	if (FUNC6(ah->curchan) && !FUNC2(ah) && !FUNC5(ah))
		val = -15;

	FUNC7(ah, AR_PHY_PAPRD_TRAINER_CNTL3,
		      AR_PHY_PAPRD_TRAINER_CNTL3_CF_PAPRD_ADC_DESIRED_SIZE,
		      val);
	FUNC7(ah, AR_PHY_PAPRD_TRAINER_CNTL3,
		      AR_PHY_PAPRD_TRAINER_CNTL3_CF_PAPRD_BBTXMIX_DISABLE, 1);
	FUNC7(ah, AR_PHY_PAPRD_TRAINER_CNTL4,
		      AR_PHY_PAPRD_TRAINER_CNTL4_CF_PAPRD_SAFETY_DELTA, 0);
	FUNC7(ah, AR_PHY_PAPRD_TRAINER_CNTL4,
		      AR_PHY_PAPRD_TRAINER_CNTL4_CF_PAPRD_MIN_CORR, 400);
	FUNC7(ah, AR_PHY_PAPRD_TRAINER_CNTL4,
		      AR_PHY_PAPRD_TRAINER_CNTL4_CF_PAPRD_NUM_TRAIN_SAMPLES,
		      100);
	FUNC7(ah, AR_PHY_PAPRD_PRE_POST_SCALE_0_B0,
		      AR_PHY_PAPRD_PRE_POST_SCALING, 261376);
	FUNC7(ah, AR_PHY_PAPRD_PRE_POST_SCALE_1_B0,
		      AR_PHY_PAPRD_PRE_POST_SCALING, 248079);
	FUNC7(ah, AR_PHY_PAPRD_PRE_POST_SCALE_2_B0,
		      AR_PHY_PAPRD_PRE_POST_SCALING, 233759);
	FUNC7(ah, AR_PHY_PAPRD_PRE_POST_SCALE_3_B0,
		      AR_PHY_PAPRD_PRE_POST_SCALING, 220464);
	FUNC7(ah, AR_PHY_PAPRD_PRE_POST_SCALE_4_B0,
		      AR_PHY_PAPRD_PRE_POST_SCALING, 208194);
	FUNC7(ah, AR_PHY_PAPRD_PRE_POST_SCALE_5_B0,
		      AR_PHY_PAPRD_PRE_POST_SCALING, 196949);
	FUNC7(ah, AR_PHY_PAPRD_PRE_POST_SCALE_6_B0,
		      AR_PHY_PAPRD_PRE_POST_SCALING, 185706);
	FUNC7(ah, AR_PHY_PAPRD_PRE_POST_SCALE_7_B0,
		      AR_PHY_PAPRD_PRE_POST_SCALING, 175487);
	return 0;
}