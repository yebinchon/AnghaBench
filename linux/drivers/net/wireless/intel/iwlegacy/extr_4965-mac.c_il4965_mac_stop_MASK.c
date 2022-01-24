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
struct il_priv {int /*<<< orphan*/  workqueue; scalar_t__ is_open; } ;
struct ieee80211_hw {struct il_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_INT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct il_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct il_priv*) ; 

void
FUNC5(struct ieee80211_hw *hw)
{
	struct il_priv *il = hw->priv;

	FUNC0("enter\n");

	if (!il->is_open)
		return;

	il->is_open = 0;

	FUNC3(il);

	FUNC2(il->workqueue);

	/* User space software may expect getting rfkill changes
	 * even if interface is down */
	FUNC1(il, CSR_INT, 0xFFFFFFFF);
	FUNC4(il);

	FUNC0("leave\n");
}