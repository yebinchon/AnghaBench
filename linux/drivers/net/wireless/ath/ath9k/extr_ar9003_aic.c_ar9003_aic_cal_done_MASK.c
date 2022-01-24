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
struct ath9k_hw_aic {int /*<<< orphan*/  aic_cal_state; } ;
struct TYPE_2__ {struct ath9k_hw_aic aic; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  AIC_CAL_STATE_DONE ; 
 int /*<<< orphan*/  AIC_CAL_STATE_ERROR ; 
 int ATH_AIC_BT_AIC_ENABLE ; 
 int /*<<< orphan*/  ATH_AIC_BT_JUPITER_CTRL ; 
 int FUNC0 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 

__attribute__((used)) static void FUNC3(struct ath_hw *ah)
{
	struct ath9k_hw_aic *aic = &ah->btcoex_hw.aic;

	/* Disable AIC reference signal in BT modem. */
	FUNC1(ah, ATH_AIC_BT_JUPITER_CTRL,
		  (FUNC0(ah, ATH_AIC_BT_JUPITER_CTRL) &
		   ~ATH_AIC_BT_AIC_ENABLE));

	if (FUNC2(ah))
		aic->aic_cal_state = AIC_CAL_STATE_DONE;
	else
		aic->aic_cal_state = AIC_CAL_STATE_ERROR;
}