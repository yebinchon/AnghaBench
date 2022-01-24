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
struct TYPE_2__ {int /*<<< orphan*/  rfkill_poll; } ;
struct il_priv {TYPE_1__ _3945; int /*<<< orphan*/  workqueue; scalar_t__ is_open; } ;
struct ieee80211_hw {struct il_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(struct ieee80211_hw *hw)
{
	struct il_priv *il = hw->priv;

	FUNC0("enter\n");

	if (!il->is_open) {
		FUNC0("leave - skip\n");
		return;
	}

	il->is_open = 0;

	FUNC2(il);

	FUNC1(il->workqueue);

	/* start polling the killswitch state again */
	FUNC3(il->workqueue, &il->_3945.rfkill_poll,
			   FUNC4(2 * HZ));

	FUNC0("leave\n");
}