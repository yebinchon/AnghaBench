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
struct lbs_private {TYPE_1__* dev; } ;
struct TYPE_4__ {void* size; } ;
struct cmd_ds_802_11_monitor_mode {void* mode; void* action; TYPE_2__ hdr; } ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_3__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_ETHER ; 
 int /*<<< orphan*/  ARPHRD_IEEE80211_RADIOTAP ; 
 int /*<<< orphan*/  CMD_802_11_MONITOR_MODE ; 
 int CMD_ACT_SET ; 
 void* FUNC0 (int) ; 
 int FUNC1 (struct lbs_private*,int /*<<< orphan*/ ,struct cmd_ds_802_11_monitor_mode*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cmd_ds_802_11_monitor_mode*,int /*<<< orphan*/ ,int) ; 

int FUNC4(struct lbs_private *priv, int enable)
{
	struct cmd_ds_802_11_monitor_mode cmd;
	int ret;

	FUNC3(&cmd, 0, sizeof(cmd));
	cmd.hdr.size = FUNC0(sizeof(cmd));
	cmd.action = FUNC0(CMD_ACT_SET);
	if (enable)
		cmd.mode = FUNC0(0x1);

	FUNC2("SET_MONITOR_MODE: %d\n", enable);

	ret = FUNC1(priv, CMD_802_11_MONITOR_MODE, &cmd);
	if (ret == 0) {
		priv->dev->type = enable ? ARPHRD_IEEE80211_RADIOTAP :
						ARPHRD_ETHER;
	}

	return ret;
}