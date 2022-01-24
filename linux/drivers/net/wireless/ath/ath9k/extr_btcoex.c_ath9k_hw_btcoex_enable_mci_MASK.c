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
struct ath_btcoex_hw {int enabled; int /*<<< orphan*/ * wlan_weight; } ;
struct ath_hw {struct ath_btcoex_hw btcoex_hw; } ;

/* Variables and functions */
 int AR9300_NUM_BT_WEIGHTS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  AR_QUIET1 ; 
 int /*<<< orphan*/  AR_QUIET1_QUIET_ACK_CTS_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ath_hw *ah)
{
	struct ath_btcoex_hw *btcoex = &ah->btcoex_hw;
	int i;

	for (i = 0; i < AR9300_NUM_BT_WEIGHTS; i++)
		FUNC2(ah, FUNC0(i),
			  btcoex->wlan_weight[i]);

	FUNC1(ah, AR_QUIET1, AR_QUIET1_QUIET_ACK_CTS_ENABLE, 1);
	btcoex->enabled = true;
}