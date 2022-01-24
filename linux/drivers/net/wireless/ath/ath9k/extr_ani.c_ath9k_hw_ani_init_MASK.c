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
struct TYPE_2__ {int /*<<< orphan*/  ani_poll_interval; int /*<<< orphan*/  cck_trig_low; int /*<<< orphan*/  cck_trig_high; int /*<<< orphan*/  ofdm_trig_low; int /*<<< orphan*/  ofdm_trig_high; } ;
struct ar5416AniState {int mrcCCK; int ofdmsTurn; int ofdmWeakSigDetect; int /*<<< orphan*/  ofdmNoiseImmunityLevel; int /*<<< orphan*/  cckNoiseImmunityLevel; int /*<<< orphan*/  firstepLevel; int /*<<< orphan*/  spurImmunityLevel; } ;
struct ath_hw {TYPE_1__ config; int /*<<< orphan*/  aniperiod; struct ar5416AniState ani; } ;
struct ath_common {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANI ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  ATH9K_ANI_CCK_DEF_LEVEL ; 
 int /*<<< orphan*/  ATH9K_ANI_CCK_TRIG_HIGH ; 
 int /*<<< orphan*/  ATH9K_ANI_CCK_TRIG_HIGH_OLD ; 
 int /*<<< orphan*/  ATH9K_ANI_CCK_TRIG_LOW ; 
 int /*<<< orphan*/  ATH9K_ANI_CCK_TRIG_LOW_OLD ; 
 int /*<<< orphan*/  ATH9K_ANI_FIRSTEP_LVL ; 
 int /*<<< orphan*/  ATH9K_ANI_OFDM_DEF_LEVEL ; 
 int /*<<< orphan*/  ATH9K_ANI_OFDM_TRIG_HIGH ; 
 int /*<<< orphan*/  ATH9K_ANI_OFDM_TRIG_HIGH_OLD ; 
 int /*<<< orphan*/  ATH9K_ANI_OFDM_TRIG_LOW ; 
 int /*<<< orphan*/  ATH9K_ANI_OFDM_TRIG_LOW_OLD ; 
 int /*<<< orphan*/  ATH9K_ANI_PERIOD ; 
 int /*<<< orphan*/  ATH9K_ANI_POLLINTERVAL ; 
 int /*<<< orphan*/  ATH9K_ANI_SPUR_IMMUNE_LVL ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 
 struct ath_common* FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_common*,int /*<<< orphan*/ ,char*) ; 

void FUNC5(struct ath_hw *ah)
{
	struct ath_common *common = FUNC3(ah);
	struct ar5416AniState *ani = &ah->ani;

	FUNC4(common, ANI, "Initialize ANI\n");

	if (FUNC0(ah)) {
		ah->config.ofdm_trig_high = ATH9K_ANI_OFDM_TRIG_HIGH;
		ah->config.ofdm_trig_low = ATH9K_ANI_OFDM_TRIG_LOW;
		ah->config.cck_trig_high = ATH9K_ANI_CCK_TRIG_HIGH;
		ah->config.cck_trig_low = ATH9K_ANI_CCK_TRIG_LOW;
	} else {
		ah->config.ofdm_trig_high = ATH9K_ANI_OFDM_TRIG_HIGH_OLD;
		ah->config.ofdm_trig_low = ATH9K_ANI_OFDM_TRIG_LOW_OLD;
		ah->config.cck_trig_high = ATH9K_ANI_CCK_TRIG_HIGH_OLD;
		ah->config.cck_trig_low = ATH9K_ANI_CCK_TRIG_LOW_OLD;
	}

	ani->spurImmunityLevel = ATH9K_ANI_SPUR_IMMUNE_LVL;
	ani->firstepLevel = ATH9K_ANI_FIRSTEP_LVL;
	ani->mrcCCK = FUNC0(ah) ? true : false;
	ani->ofdmsTurn = true;
	ani->ofdmWeakSigDetect = true;
	ani->cckNoiseImmunityLevel = ATH9K_ANI_CCK_DEF_LEVEL;
	ani->ofdmNoiseImmunityLevel = ATH9K_ANI_OFDM_DEF_LEVEL;

	/*
	 * since we expect some ongoing maintenance on the tables, let's sanity
	 * check here default level should not modify INI setting.
	 */
	ah->aniperiod = ATH9K_ANI_PERIOD;
	ah->config.ani_poll_interval = ATH9K_ANI_POLLINTERVAL;

	FUNC1(ah);
	FUNC2(ah);
}