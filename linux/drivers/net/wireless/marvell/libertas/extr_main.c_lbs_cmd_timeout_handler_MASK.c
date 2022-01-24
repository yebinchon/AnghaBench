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
struct lbs_private {int cmd_timed_out; scalar_t__ dnld_sent; int /*<<< orphan*/  driver_lock; int /*<<< orphan*/  waitq; TYPE_2__* cur_cmd; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {TYPE_1__* cmdbuf; } ;
struct TYPE_3__ {int /*<<< orphan*/  command; } ;

/* Variables and functions */
 scalar_t__ DNLD_CMD_SENT ; 
 scalar_t__ DNLD_RES_RECEIVED ; 
 int /*<<< orphan*/  command_timer ; 
 struct lbs_private* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct lbs_private* priv ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct timer_list *t)
{
	struct lbs_private *priv = FUNC0(priv, t, command_timer);
	unsigned long flags;

	FUNC3(&priv->driver_lock, flags);

	if (!priv->cur_cmd)
		goto out;

	FUNC2(priv->dev, "command 0x%04x timed out\n",
		    FUNC1(priv->cur_cmd->cmdbuf->command));

	priv->cmd_timed_out = 1;

	/*
	 * If the device didn't even acknowledge the command, reset the state
	 * so that we don't block all future commands due to this one timeout.
	 */
	if (priv->dnld_sent == DNLD_CMD_SENT)
		priv->dnld_sent = DNLD_RES_RECEIVED;

	FUNC5(&priv->waitq);
out:
	FUNC4(&priv->driver_lock, flags);
}