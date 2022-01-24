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
struct ieee80211_hw {struct ar5523* priv; } ;
struct ar5523 {int /*<<< orphan*/  mutex; int /*<<< orphan*/  rx_refill_work; int /*<<< orphan*/  tx_wd_work; int /*<<< orphan*/  tx_wd_timer; int /*<<< orphan*/  flags; int /*<<< orphan*/  stat_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR5523_HW_UP ; 
 int /*<<< orphan*/  UATH_LED_ACTIVITY ; 
 int /*<<< orphan*/  UATH_LED_LINK ; 
 int /*<<< orphan*/  UATH_LED_OFF ; 
 int /*<<< orphan*/  WDCMSG_TARGET_STOP ; 
 int /*<<< orphan*/  FUNC0 (struct ar5523*) ; 
 int /*<<< orphan*/  FUNC1 (struct ar5523*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ar5523*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ar5523*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct ieee80211_hw *hw)
{
	struct ar5523 *ar = hw->priv;

	FUNC2(ar, "stop called\n");

	FUNC4(&ar->stat_work);
	FUNC8(&ar->mutex);
	FUNC6(AR5523_HW_UP, &ar->flags);

	FUNC3(ar, UATH_LED_LINK, UATH_LED_OFF);
	FUNC3(ar, UATH_LED_ACTIVITY, UATH_LED_OFF);

	FUNC1(ar, WDCMSG_TARGET_STOP, NULL, 0, 0);

	FUNC7(&ar->tx_wd_timer);
	FUNC5(&ar->tx_wd_work);
	FUNC5(&ar->rx_refill_work);
	FUNC0(ar);
	FUNC9(&ar->mutex);
}