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
typedef  int /*<<< orphan*/  wake_method ;
struct wol_config {int dummy; } ;
struct lbs_private {int wol_gpio; int wol_gap; int /*<<< orphan*/  dev; int /*<<< orphan*/  fwcapinfo; struct if_usb_card* card; } ;
struct if_usb_card {int /*<<< orphan*/  boot2_version; } ;
struct TYPE_2__ {void* size; } ;
struct cmd_ds_set_boot2_ver {int /*<<< orphan*/  method; void* action; TYPE_1__ hdr; int /*<<< orphan*/  version; } ;
struct cmd_ds_802_11_fw_wake_method {int /*<<< orphan*/  method; void* action; TYPE_1__ hdr; int /*<<< orphan*/  version; } ;
typedef  int /*<<< orphan*/  b2_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_802_11_FW_WAKE_METHOD ; 
 int CMD_ACT_GET ; 
 int /*<<< orphan*/  CMD_SET_BOOT2_VER ; 
 scalar_t__ CMD_WAKE_METHOD_COMMAND_INT ; 
 int /*<<< orphan*/  EHS_WAKE_ON_UNICAST_DATA ; 
 int /*<<< orphan*/  FW_CAPINFO_PS ; 
 void* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct lbs_private*,int /*<<< orphan*/ ,struct cmd_ds_set_boot2_ver*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct lbs_private*,int /*<<< orphan*/ ,struct wol_config*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC6(struct lbs_private *priv)
{
	struct if_usb_card *cardp = priv->card;
	struct cmd_ds_set_boot2_ver b2_cmd;
	struct cmd_ds_802_11_fw_wake_method wake_method;

	b2_cmd.hdr.size = FUNC0(sizeof(b2_cmd));
	b2_cmd.action = 0;
	b2_cmd.version = cardp->boot2_version;

	if (FUNC1(priv, CMD_SET_BOOT2_VER, &b2_cmd))
		FUNC2("Setting boot2 version failed\n");

	priv->wol_gpio = 2; /* Wake via GPIO2... */
	priv->wol_gap = 20; /* ... after 20ms    */
	FUNC3(priv, EHS_WAKE_ON_UNICAST_DATA,
			(struct wol_config *) NULL);

	wake_method.hdr.size = FUNC0(sizeof(wake_method));
	wake_method.action = FUNC0(CMD_ACT_GET);
	if (FUNC1(priv, CMD_802_11_FW_WAKE_METHOD, &wake_method)) {
		FUNC5(priv->dev, "Firmware does not seem to support PS mode\n");
		priv->fwcapinfo &= ~FW_CAPINFO_PS;
	} else {
		if (FUNC4(wake_method.method) == CMD_WAKE_METHOD_COMMAND_INT) {
			FUNC2("Firmware seems to support PS with wake-via-command\n");
		} else {
			/* The versions which boot up this way don't seem to
			   work even if we set it to the command interrupt */
			priv->fwcapinfo &= ~FW_CAPINFO_PS;
			FUNC5(priv->dev,
				    "Firmware doesn't wake via command interrupt; disabling PS mode\n");
		}
	}
}