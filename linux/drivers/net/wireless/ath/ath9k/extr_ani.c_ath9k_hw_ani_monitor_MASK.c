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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ cck_trig_low; scalar_t__ ofdm_trig_low; scalar_t__ ofdm_trig_high; scalar_t__ cck_trig_high; } ;
struct ar5416AniState {int ofdmPhyErrCount; int listenTime; int cckPhyErrCount; int ofdmsTurn; int /*<<< orphan*/  cckNoiseImmunityLevel; int /*<<< orphan*/  ofdmNoiseImmunityLevel; } ;
struct ath_hw {int aniperiod; TYPE_1__ config; struct ar5416AniState ani; } ;
struct ath_common {int dummy; } ;
struct ath9k_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANI ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*) ; 
 struct ath_common* FUNC5 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_common*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int) ; 

void FUNC7(struct ath_hw *ah, struct ath9k_channel *chan)
{
	struct ar5416AniState *aniState = &ah->ani;
	struct ath_common *common = FUNC5(ah);
	u32 ofdmPhyErrRate, cckPhyErrRate;

	if (!FUNC4(ah))
		return;

	ofdmPhyErrRate = aniState->ofdmPhyErrCount * 1000 /
			 aniState->listenTime;
	cckPhyErrRate =  aniState->cckPhyErrCount * 1000 /
			 aniState->listenTime;

	FUNC6(common, ANI,
		"listenTime=%d OFDM:%d errs=%d/s CCK:%d errs=%d/s ofdm_turn=%d\n",
		aniState->listenTime,
		aniState->ofdmNoiseImmunityLevel,
		ofdmPhyErrRate, aniState->cckNoiseImmunityLevel,
		cckPhyErrRate, aniState->ofdmsTurn);

	if (aniState->listenTime > ah->aniperiod) {
		if (cckPhyErrRate < ah->config.cck_trig_low &&
		    ofdmPhyErrRate < ah->config.ofdm_trig_low) {
			FUNC2(ah);
			aniState->ofdmsTurn = !aniState->ofdmsTurn;
		} else if (ofdmPhyErrRate > ah->config.ofdm_trig_high) {
			FUNC3(ah);
			aniState->ofdmsTurn = false;
		} else if (cckPhyErrRate > ah->config.cck_trig_high) {
			FUNC1(ah);
			aniState->ofdmsTurn = true;
		} else
			return;
			
		FUNC0(ah);
	}
}