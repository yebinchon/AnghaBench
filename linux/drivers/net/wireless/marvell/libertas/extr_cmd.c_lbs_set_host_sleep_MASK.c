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
typedef  int /*<<< orphan*/  uint32_t ;
struct wol_config {int dummy; } ;
struct lbs_private {int is_host_sleep_activated; scalar_t__ psstate; int /*<<< orphan*/  dev; int /*<<< orphan*/  host_sleep_q; int /*<<< orphan*/  wol_criteria; } ;
struct cmd_header {int dummy; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_802_11_HOST_SLEEP_ACTIVATE ; 
 int /*<<< orphan*/  EHS_REMOVE_WAKEUP ; 
 int HZ ; 
 scalar_t__ PS_STATE_FULL_POWER ; 
 int FUNC0 (struct lbs_private*,int /*<<< orphan*/ ,struct cmd_header*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct lbs_private*,int /*<<< orphan*/ ,struct wol_config*) ; 
 int /*<<< orphan*/  lbs_ret_host_sleep_activate ; 
 int /*<<< orphan*/  FUNC2 (struct cmd_header*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 

int FUNC6(struct lbs_private *priv, int host_sleep)
{
	struct cmd_header cmd;
	int ret = 0;
	uint32_t criteria = EHS_REMOVE_WAKEUP;

	if (host_sleep) {
		if (priv->is_host_sleep_activated != 1) {
			FUNC2(&cmd, 0, sizeof(cmd));
			ret = FUNC1(priv, priv->wol_criteria,
					(struct wol_config *)NULL);
			if (ret) {
				FUNC4(priv->dev,
					    "Host sleep configuration failed: %d\n",
					    ret);
				return ret;
			}
			if (priv->psstate == PS_STATE_FULL_POWER) {
				ret = FUNC0(priv,
						CMD_802_11_HOST_SLEEP_ACTIVATE,
						&cmd,
						sizeof(cmd),
						lbs_ret_host_sleep_activate, 0);
				if (ret)
					FUNC4(priv->dev,
						    "HOST_SLEEP_ACTIVATE failed: %d\n",
						    ret);
			}

			if (!FUNC5(
						priv->host_sleep_q,
						priv->is_host_sleep_activated,
						(10 * HZ))) {
				FUNC3(priv->dev,
					   "host_sleep_q: timer expired\n");
				ret = -1;
			}
		} else {
			FUNC3(priv->dev, "host sleep: already enabled\n");
		}
	} else {
		if (priv->is_host_sleep_activated)
			ret = FUNC1(priv, criteria,
					(struct wol_config *)NULL);
	}

	return ret;
}