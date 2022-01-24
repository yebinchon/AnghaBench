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
struct ipw2100_priv {int status; int /*<<< orphan*/  action_mutex; int /*<<< orphan*/  rf_kill; scalar_t__ stop_rf_kill; } ;

/* Variables and functions */
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int STATUS_RF_KILL_SW ; 
 int /*<<< orphan*/  FUNC1 (struct ipw2100_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct ipw2100_priv*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ipw2100_priv*) ; 
 int /*<<< orphan*/  system_wq ; 

__attribute__((used)) static int FUNC8(struct ipw2100_priv *priv, int disable_radio)
{
	if ((disable_radio ? 1 : 0) ==
	    (priv->status & STATUS_RF_KILL_SW ? 1 : 0))
		return 0;

	FUNC0("Manual SW RF Kill set to: RADIO  %s\n",
			  disable_radio ? "OFF" : "ON");

	FUNC3(&priv->action_mutex);

	if (disable_radio) {
		priv->status |= STATUS_RF_KILL_SW;
		FUNC1(priv);
	} else {
		priv->status &= ~STATUS_RF_KILL_SW;
		if (FUNC5(priv)) {
			FUNC0("Can not turn radio back on - "
					  "disabled by HW switch\n");
			/* Make sure the RF_KILL check timer is running */
			priv->stop_rf_kill = 0;
			FUNC2(system_wq, &priv->rf_kill,
					 FUNC6(HZ));
		} else
			FUNC7(priv);
	}

	FUNC4(&priv->action_mutex);
	return 1;
}