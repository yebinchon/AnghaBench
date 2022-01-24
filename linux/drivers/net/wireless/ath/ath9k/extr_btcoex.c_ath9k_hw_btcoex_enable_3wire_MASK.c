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
struct ath_btcoex_hw {int bt_coex_mode; int bt_coex_mode2; int bt_coex_mode3; int* wlan_weight; int* bt_weight; int bt_coex_weights; int /*<<< orphan*/  wlanactive_gpio; } ;
struct ath_hw {struct ath_btcoex_hw btcoex_hw; } ;

/* Variables and functions */
 int AR9300_NUM_BT_WEIGHTS ; 
 int FUNC0 (int) ; 
 int AR_BT_COEX_MODE ; 
 int AR_BT_COEX_MODE2 ; 
 int AR_BT_COEX_MODE3 ; 
 int AR_BT_COEX_WEIGHT ; 
 int AR_BT_COEX_WL_WEIGHTS0 ; 
 int AR_BT_COEX_WL_WEIGHTS1 ; 
 int /*<<< orphan*/  AR_BT_PHY_ERR_BT_COLL_ENABLE ; 
 int /*<<< orphan*/  AR_GPIO_OUTPUT_MUX_AS_RX_CLEAR_EXTERNAL ; 
 int /*<<< orphan*/  AR_PCU_BT_ANT_PREVENT_RX ; 
 int /*<<< orphan*/  AR_PCU_MISC ; 
 int /*<<< orphan*/  AR_QUIET1 ; 
 int /*<<< orphan*/  AR_QUIET1_QUIET_ACK_CTS_ENABLE ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 
 scalar_t__ FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hw*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct ath_hw *ah)
{
	struct ath_btcoex_hw *btcoex = &ah->btcoex_hw;
	u32  val;
	int i;

	/*
	 * Program coex mode and weight registers to
	 * enable coex 3-wire
	 */
	if (FUNC3(ah))
		FUNC4(ah, AR_BT_COEX_MODE2, AR_BT_PHY_ERR_BT_COLL_ENABLE);

	FUNC7(ah, AR_BT_COEX_MODE, btcoex->bt_coex_mode);
	FUNC7(ah, AR_BT_COEX_MODE2, btcoex->bt_coex_mode2);

	if (FUNC3(ah))
		FUNC7(ah, AR_BT_COEX_MODE3, btcoex->bt_coex_mode3);

	if (FUNC2(ah)) {
		FUNC7(ah, AR_BT_COEX_WL_WEIGHTS0, btcoex->wlan_weight[0]);
		FUNC7(ah, AR_BT_COEX_WL_WEIGHTS1, btcoex->wlan_weight[1]);
		for (i = 0; i < AR9300_NUM_BT_WEIGHTS; i++)
			FUNC7(ah, FUNC0(i),
				  btcoex->bt_weight[i]);
	} else
		FUNC7(ah, AR_BT_COEX_WEIGHT, btcoex->bt_coex_weights);

	if (FUNC1(ah)) {
		val = FUNC5(ah, 0x50040);
		val &= 0xFFFFFEFF;
		FUNC7(ah, 0x50040, val);
	}

	FUNC6(ah, AR_QUIET1, AR_QUIET1_QUIET_ACK_CTS_ENABLE, 1);
	FUNC6(ah, AR_PCU_MISC, AR_PCU_BT_ANT_PREVENT_RX, 0);

	FUNC8(ah, btcoex->wlanactive_gpio,
				  "ath9k-wlanactive",
				  AR_GPIO_OUTPUT_MUX_AS_RX_CLEAR_EXTERNAL);
}