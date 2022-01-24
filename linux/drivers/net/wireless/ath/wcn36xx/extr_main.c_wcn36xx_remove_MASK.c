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
struct wcn36xx {int /*<<< orphan*/  hal_mutex; int /*<<< orphan*/  ccu_base; int /*<<< orphan*/  dxe_base; int /*<<< orphan*/  smd_channel; int /*<<< orphan*/  tx_rings_empty_state; int /*<<< orphan*/  tx_enable_state; int /*<<< orphan*/  nv; } ;
struct platform_device {int dummy; } ;
struct ieee80211_hw {struct wcn36xx* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  WCN36XX_DBG_MAC ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ieee80211_hw* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct ieee80211_hw *hw = FUNC4(pdev);
	struct wcn36xx *wcn = hw->priv;
	FUNC8(WCN36XX_DBG_MAC, "platform remove\n");

	FUNC6(wcn->nv);

	FUNC1(hw);

	FUNC5(wcn->tx_enable_state);
	FUNC5(wcn->tx_rings_empty_state);

	FUNC7(wcn->smd_channel);

	FUNC2(wcn->dxe_base);
	FUNC2(wcn->ccu_base);

	FUNC3(&wcn->hal_mutex);
	FUNC0(hw);

	return 0;
}