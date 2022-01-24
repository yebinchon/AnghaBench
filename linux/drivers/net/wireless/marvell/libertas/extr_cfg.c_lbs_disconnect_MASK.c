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
typedef  int u16 ;
struct lbs_private {int /*<<< orphan*/  connect_status; int /*<<< orphan*/  dev; int /*<<< orphan*/  assoc_bss; } ;
struct TYPE_2__ {void* size; } ;
struct cmd_ds_802_11_deauthenticate {void* reasoncode; int /*<<< orphan*/  macaddr; TYPE_1__ hdr; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_802_11_DEAUTHENTICATE ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  LBS_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 int FUNC2 (struct lbs_private*,int /*<<< orphan*/ ,struct cmd_ds_802_11_deauthenticate*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cmd_ds_802_11_deauthenticate*,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct lbs_private *priv, u16 reason)
{
	struct cmd_ds_802_11_deauthenticate cmd;
	int ret;

	FUNC4(&cmd, 0, sizeof(cmd));
	cmd.hdr.size = FUNC1(sizeof(cmd));
	/* Mildly ugly to use a locally store my own BSSID ... */
	FUNC3(cmd.macaddr, &priv->assoc_bss, ETH_ALEN);
	cmd.reasoncode = FUNC1(reason);

	ret = FUNC2(priv, CMD_802_11_DEAUTHENTICATE, &cmd);
	if (ret)
		return ret;

	FUNC0(priv->dev,
			reason,
			NULL, 0, true,
			GFP_KERNEL);
	priv->connect_status = LBS_DISCONNECTED;

	return 0;
}