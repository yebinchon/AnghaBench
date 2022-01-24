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
typedef  int /*<<< orphan*/  u32 ;
struct wcn36xx {int /*<<< orphan*/  conf_mutex; } ;
struct ieee80211_hw {struct wcn36xx* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  WCN36XX_DBG_MAC ; 
 int /*<<< orphan*/  WCN36XX_HAL_CFG_RTS_THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wcn36xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ieee80211_hw *hw, u32 value)
{
	struct wcn36xx *wcn = hw->priv;
	FUNC2(WCN36XX_DBG_MAC, "mac set RTS threshold %d\n", value);

	FUNC0(&wcn->conf_mutex);
	FUNC3(wcn, WCN36XX_HAL_CFG_RTS_THRESHOLD, value);
	FUNC1(&wcn->conf_mutex);

	return 0;
}