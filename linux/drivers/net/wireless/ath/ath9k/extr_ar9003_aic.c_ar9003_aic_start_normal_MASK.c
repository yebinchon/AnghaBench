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
struct ath9k_hw_aic {scalar_t__ aic_cal_state; int* aic_sram; int aic_enabled; } ;
struct TYPE_2__ {struct ath9k_hw_aic aic; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;
typedef  size_t int16_t ;

/* Variables and functions */
 scalar_t__ AIC_CAL_STATE_DONE ; 
 int AR_PHY_65NM_CH1_RXTX4 ; 
 int AR_PHY_AIC_SRAM_ADDR_B1 ; 
 int AR_PHY_AIC_SRAM_DATA_B1 ; 
 size_t ATH_AIC_MAX_BT_CHANNEL ; 
 int ATH_AIC_SRAM_AUTO_INCREMENT ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 

u8 FUNC2(struct ath_hw *ah)
{
	struct ath9k_hw_aic *aic = &ah->btcoex_hw.aic;
	int16_t i;

	if (aic->aic_cal_state != AIC_CAL_STATE_DONE)
		return 1;

	FUNC1(ah);

	FUNC0(ah, AR_PHY_AIC_SRAM_ADDR_B1, ATH_AIC_SRAM_AUTO_INCREMENT);

	for (i = 0; i < ATH_AIC_MAX_BT_CHANNEL; i++) {
		FUNC0(ah, AR_PHY_AIC_SRAM_DATA_B1, aic->aic_sram[i]);
	}

	/* FIXME: Replace these with proper register names */
	FUNC0(ah, 0xa6b0, 0x80);
	FUNC0(ah, 0xa6b4, 0x5b2df0);
	FUNC0(ah, 0xa6b8, 0x10762cc8);
	FUNC0(ah, 0xa6bc, 0x1219a4b);
	FUNC0(ah, 0xa6c0, 0x1e01);
	FUNC0(ah, 0xb6b4, 0xf0);
	FUNC0(ah, 0xb6c0, 0x1e01);
	FUNC0(ah, 0xb6b0, 0x81);
	FUNC0(ah, AR_PHY_65NM_CH1_RXTX4, 0x40000000);

	aic->aic_enabled = true;

	return 0;
}