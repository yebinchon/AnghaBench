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
struct ath_btcoex_hw {int /*<<< orphan*/  wlanactive_gpio; } ;
struct ath_hw {struct ath_btcoex_hw btcoex_hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_GPIO_OUTPUT_MUX_AS_TX_FRAME ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct ath_hw *ah)
{
	struct ath_btcoex_hw *btcoex_hw = &ah->btcoex_hw;

	/* Configure the desired GPIO port for TX_FRAME output */
	FUNC0(ah, btcoex_hw->wlanactive_gpio,
				  "ath9k-wlanactive",
				  AR_GPIO_OUTPUT_MUX_AS_TX_FRAME);
}