#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct TYPE_3__ {int max_txq_num; } ;
struct il_priv {int cmd_queue; int /*<<< orphan*/  watchdog; TYPE_1__ hw_params; TYPE_2__* cfg; int /*<<< orphan*/  status; } ;
struct TYPE_4__ {unsigned long wd_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  S_EXIT_PENDING ; 
 struct il_priv* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct il_priv* il ; 
 scalar_t__ FUNC2 (struct il_priv*,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  watchdog ; 

void
FUNC6(struct timer_list *t)
{
	struct il_priv *il = FUNC1(il, t, watchdog);
	int cnt;
	unsigned long timeout;

	if (FUNC5(S_EXIT_PENDING, &il->status))
		return;

	timeout = il->cfg->wd_timeout;
	if (timeout == 0)
		return;

	/* monitor and check for stuck cmd queue */
	if (FUNC2(il, il->cmd_queue))
		return;

	/* monitor and check for other stuck queues */
	for (cnt = 0; cnt < il->hw_params.max_txq_num; cnt++) {
		/* skip as we already checked the command queue */
		if (cnt == il->cmd_queue)
			continue;
		if (FUNC2(il, cnt))
			return;
	}

	FUNC3(&il->watchdog,
		  jiffies + FUNC4(FUNC0(timeout)));
}