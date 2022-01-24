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
struct ath_btcoex_hw {int enabled; scalar_t__ scheme; int /*<<< orphan*/  wlanactive_gpio; } ;
struct ath_hw {struct ath_btcoex_hw btcoex_hw; } ;

/* Variables and functions */
 int AR9300_NUM_BT_WEIGHTS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  AR_BT_COEX_MODE ; 
 int /*<<< orphan*/  AR_BT_COEX_MODE2 ; 
 int /*<<< orphan*/  AR_BT_COEX_WEIGHT ; 
 int /*<<< orphan*/  AR_BT_COEX_WL_WEIGHTS0 ; 
 int /*<<< orphan*/  AR_BT_COEX_WL_WEIGHTS1 ; 
 int AR_BT_MODE ; 
 int AR_BT_QUIET ; 
 int /*<<< orphan*/  AR_GPIO_OUTPUT_MUX_AS_OUTPUT ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 scalar_t__ ATH_BTCOEX_CFG_3WIRE ; 
 scalar_t__ ATH_BTCOEX_CFG_MCI ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 scalar_t__ FUNC4 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7(struct ath_hw *ah)
{
	struct ath_btcoex_hw *btcoex_hw = &ah->btcoex_hw;
	int i;

	btcoex_hw->enabled = false;

	if (FUNC4(ah) == ATH_BTCOEX_CFG_MCI) {
		FUNC3(ah);
		return;
	}

	if (!FUNC1(ah))
		FUNC6(ah, btcoex_hw->wlanactive_gpio, 0);

	FUNC5(ah, btcoex_hw->wlanactive_gpio,
				  NULL, AR_GPIO_OUTPUT_MUX_AS_OUTPUT);

	if (btcoex_hw->scheme == ATH_BTCOEX_CFG_3WIRE) {
		FUNC2(ah, AR_BT_COEX_MODE, AR_BT_QUIET | AR_BT_MODE);
		FUNC2(ah, AR_BT_COEX_MODE2, 0);

		if (FUNC1(ah)) {
			FUNC2(ah, AR_BT_COEX_WL_WEIGHTS0, 0);
			FUNC2(ah, AR_BT_COEX_WL_WEIGHTS1, 0);
			for (i = 0; i < AR9300_NUM_BT_WEIGHTS; i++)
				FUNC2(ah, FUNC0(i), 0);
		} else
			FUNC2(ah, AR_BT_COEX_WEIGHT, 0);

	}
}