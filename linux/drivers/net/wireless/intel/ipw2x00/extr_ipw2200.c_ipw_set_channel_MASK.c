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
typedef  scalar_t__ u8 ;
struct ipw_priv {scalar_t__ channel; int status; TYPE_1__* ieee; int /*<<< orphan*/  config; } ;
struct TYPE_2__ {scalar_t__ iw_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFG_STATIC_CHANNEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ IW_MODE_MONITOR ; 
 int STATUS_SCANNING ; 
 int /*<<< orphan*/  FUNC3 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct ipw_priv *priv, u8 channel)
{
	if (channel == 0) {
		FUNC1("Setting channel to ANY (0)\n");
		priv->config &= ~CFG_STATIC_CHANNEL;
		FUNC0("Attempting to associate with new "
				"parameters.\n");
		FUNC4(priv);
		return 0;
	}

	priv->config |= CFG_STATIC_CHANNEL;

	if (priv->channel == channel) {
		FUNC1("Request to set channel to current value (%d)\n",
			       channel);
		return 0;
	}

	FUNC1("Setting channel to %i\n", (int)channel);
	priv->channel = channel;

#ifdef CONFIG_IPW2200_MONITOR
	if (priv->ieee->iw_mode == IW_MODE_MONITOR) {
		int i;
		if (priv->status & STATUS_SCANNING) {
			IPW_DEBUG_SCAN("Scan abort triggered due to "
				       "channel change.\n");
			ipw_abort_scan(priv);
		}

		for (i = 1000; i && (priv->status & STATUS_SCANNING); i--)
			udelay(10);

		if (priv->status & STATUS_SCANNING)
			IPW_DEBUG_SCAN("Still scanning...\n");
		else
			IPW_DEBUG_SCAN("Took %dms to abort current scan\n",
				       1000 - i);

		return 0;
	}
#endif				/* CONFIG_IPW2200_MONITOR */

	/* Network configuration changed -- force [re]association */
	FUNC0("[re]association triggered due to channel change.\n");
	if (!FUNC5(priv))
		FUNC4(priv);

	return 0;
}