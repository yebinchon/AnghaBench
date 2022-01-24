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
struct timer_list {int dummy; } ;
struct lbs_private {scalar_t__ connect_status; int auto_deep_sleep_timeout; int /*<<< orphan*/  auto_deepsleep_timer; int /*<<< orphan*/  wakeup_dev_required; scalar_t__ is_auto_deep_sleep_enabled; scalar_t__ is_activity_detected; } ;
struct cmd_header {int /*<<< orphan*/  size; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_802_11_DEEP_SLEEP ; 
 int HZ ; 
 scalar_t__ LBS_CONNECTED ; 
 int /*<<< orphan*/  auto_deepsleep_timer ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct lbs_private* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct lbs_private*,int /*<<< orphan*/ ,struct cmd_header*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct cmd_header*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct lbs_private* priv ; 

__attribute__((used)) static void FUNC6(struct timer_list *t)
{
	struct lbs_private *priv = FUNC1(priv, t, auto_deepsleep_timer);

	if (priv->is_activity_detected) {
		priv->is_activity_detected = 0;
	} else {
		if (priv->is_auto_deep_sleep_enabled &&
		    (!priv->wakeup_dev_required) &&
		    (priv->connect_status != LBS_CONNECTED)) {
			struct cmd_header cmd;

			FUNC3("Entering auto deep sleep mode...\n");
			FUNC4(&cmd, 0, sizeof(cmd));
			cmd.size = FUNC0(sizeof(cmd));
			FUNC2(priv, CMD_802_11_DEEP_SLEEP, &cmd,
					sizeof(cmd));
		}
	}
	FUNC5(&priv->auto_deepsleep_timer , jiffies +
				(priv->auto_deep_sleep_timeout * HZ)/1000);
}