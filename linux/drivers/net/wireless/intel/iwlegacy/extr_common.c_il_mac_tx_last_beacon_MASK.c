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
struct il_priv {scalar_t__ ibss_manager; } ;
struct ieee80211_hw {struct il_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ IL_IBSS_MANAGER ; 

int
FUNC1(struct ieee80211_hw *hw)
{
	struct il_priv *il = hw->priv;
	int ret;

	FUNC0("enter\n");

	ret = (il->ibss_manager == IL_IBSS_MANAGER);

	FUNC0("leave ret %d\n", ret);
	return ret;
}