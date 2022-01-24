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
struct timer_list {int dummy; } ;
struct dev_info {int /*<<< orphan*/  mib_timer_info; scalar_t__ pme_wait; int /*<<< orphan*/  hw; int /*<<< orphan*/  mib_read; } ;
struct TYPE_2__ {int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int HZ ; 
 struct dev_info* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct dev_info* hw_priv ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__ mib_timer_info ; 
 scalar_t__ FUNC5 (scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct timer_list *t)
{
	struct dev_info *hw_priv = FUNC0(hw_priv, t, mib_timer_info.timer);

	FUNC4(&hw_priv->mib_read);

	/* This is used to verify Wake-on-LAN is working. */
	if (hw_priv->pme_wait) {
		if (FUNC5(hw_priv->pme_wait)) {
			FUNC2(&hw_priv->hw);
			hw_priv->pme_wait = 0;
		}
	} else if (FUNC1(&hw_priv->hw)) {

		/* PME is asserted.  Wait 2 seconds to clear it. */
		hw_priv->pme_wait = jiffies + HZ * 2;
	}

	FUNC3(&hw_priv->mib_timer_info);
}