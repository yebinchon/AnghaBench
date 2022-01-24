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
struct ipw_priv {int status; int /*<<< orphan*/  up; int /*<<< orphan*/  rf_kill; int /*<<< orphan*/  down; int /*<<< orphan*/  scan_event; int /*<<< orphan*/  request_passive_scan; int /*<<< orphan*/  request_direct_scan; int /*<<< orphan*/  request_scan; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int STATUS_RF_KILL_SW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct ipw_priv *priv, int disable_radio)
{
	if ((disable_radio ? 1 : 0) ==
	    ((priv->status & STATUS_RF_KILL_SW) ? 1 : 0))
		return 0;

	FUNC0("Manual SW RF Kill set to: RADIO  %s\n",
			  disable_radio ? "OFF" : "ON");

	if (disable_radio) {
		priv->status |= STATUS_RF_KILL_SW;

		FUNC1(&priv->request_scan);
		FUNC1(&priv->request_direct_scan);
		FUNC1(&priv->request_passive_scan);
		FUNC1(&priv->scan_event);
		FUNC5(&priv->down);
	} else {
		priv->status &= ~STATUS_RF_KILL_SW;
		if (FUNC2(priv)) {
			FUNC0("Can not turn radio back on - "
					  "disabled by HW switch\n");
			/* Make sure the RF_KILL check timer is running */
			FUNC1(&priv->rf_kill);
			FUNC4(&priv->rf_kill,
					      FUNC3(2 * HZ));
		} else
			FUNC5(&priv->up);
	}

	return 1;
}