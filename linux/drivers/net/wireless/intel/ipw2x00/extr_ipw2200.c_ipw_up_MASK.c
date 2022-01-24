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
struct ipw_priv {int status; int cmdlog_len; int config; int /*<<< orphan*/  request_scan; int /*<<< orphan*/  rf_kill; int /*<<< orphan*/  mac_addr; TYPE_1__* net_dev; int /*<<< orphan*/ * cmdlog; scalar_t__ suspend_time; int /*<<< orphan*/  ieee; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int CFG_CUSTOM_MAC ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int MAX_HW_RESTARTS ; 
 int STATUS_EXIT_PENDING ; 
 int STATUS_RF_KILL_SW ; 
 int cmdlog ; 
 int /*<<< orphan*/  FUNC3 (struct ipw_priv*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct ipw_priv*) ; 
 int FUNC7 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct ipw_priv*) ; 
 int /*<<< orphan*/ * FUNC9 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC14(struct ipw_priv *priv)
{
	int rc, i;

	/* Age scan list entries found before suspend */
	if (priv->suspend_time) {
		FUNC10(priv->ieee, priv->suspend_time);
		priv->suspend_time = 0;
	}

	if (priv->status & STATUS_EXIT_PENDING)
		return -EIO;

	if (cmdlog && !priv->cmdlog) {
		priv->cmdlog = FUNC9(cmdlog, sizeof(*priv->cmdlog),
				       GFP_KERNEL);
		if (priv->cmdlog == NULL) {
			FUNC1("Error allocating %d command log entries.\n",
				  cmdlog);
			return -ENOMEM;
		} else {
			priv->cmdlog_len = cmdlog;
		}
	}

	for (i = 0; i < MAX_HW_RESTARTS; i++) {
		/* Load the microcode, firmware, and eeprom.
		 * Also start the clocks. */
		rc = FUNC7(priv);
		if (rc) {
			FUNC1("Unable to load firmware: %d\n", rc);
			return rc;
		}

		FUNC6(priv);
		if (!(priv->config & CFG_CUSTOM_MAC))
			FUNC3(priv, priv->mac_addr);
		FUNC11(priv->net_dev->dev_addr, priv->mac_addr, ETH_ALEN);

		FUNC8(priv);

		if (priv->status & STATUS_RF_KILL_SW) {
			FUNC2("Radio disabled by module parameter.\n");
			return 0;
		} else if (FUNC12(priv)) {
			FUNC2("Radio Frequency Kill Switch is On:\n"
				    "Kill switch must be turned off for "
				    "wireless networking to work.\n");
			FUNC13(&priv->rf_kill, 2 * HZ);
			return 0;
		}

		rc = FUNC4(priv);
		if (!rc) {
			FUNC0("Configured device on count %i\n", i);

			/* If configure to try and auto-associate, kick
			 * off a scan. */
			FUNC13(&priv->request_scan, 0);

			return 0;
		}

		FUNC0("Device configuration failed: 0x%08X\n", rc);
		FUNC0("Failed to config device on retry %d of %d\n",
			       i, MAX_HW_RESTARTS);

		/* We had an error bringing up the hardware, so take it
		 * all the way back down so we can try again */
		FUNC5(priv);
	}

	/* tried to restart and config the device for as long as our
	 * patience could withstand */
	FUNC1("Unable to initialize device after %d attempts.\n", i);

	return -EIO;
}