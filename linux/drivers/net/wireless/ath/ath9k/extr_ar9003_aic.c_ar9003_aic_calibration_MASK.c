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
typedef  int u8 ;
struct ath9k_hw_aic {int aic_cal_state; } ;
struct TYPE_2__ {struct ath9k_hw_aic aic; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;

/* Variables and functions */
#define  AIC_CAL_STATE_DONE 130 
 int AIC_CAL_STATE_ERROR ; 
#define  AIC_CAL_STATE_IDLE 129 
#define  AIC_CAL_STATE_STARTED 128 
 int FUNC0 (struct ath_hw*,int) ; 
 int FUNC1 (struct ath_hw*,int) ; 

u8 FUNC2(struct ath_hw *ah)
{
	struct ath9k_hw_aic *aic = &ah->btcoex_hw.aic;
	u8 cal_ret = AIC_CAL_STATE_ERROR;

	switch (aic->aic_cal_state) {
	case AIC_CAL_STATE_IDLE:
		cal_ret = FUNC1(ah, 1);
		break;
	case AIC_CAL_STATE_STARTED:
		cal_ret = FUNC0(ah, false);
		break;
	case AIC_CAL_STATE_DONE:
		cal_ret = AIC_CAL_STATE_DONE;
		break;
	default:
		break;
	}

	return cal_ret;
}