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
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  u8 ;
struct lbs_private {int (* hw_host_to_card ) (struct lbs_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ;int wakeup_dev_required; int is_deep_sleep; int /*<<< orphan*/  command_timer; scalar_t__ dnld_sent; scalar_t__ is_auto_deep_sleep_enabled; int /*<<< orphan*/  dev; int /*<<< orphan*/  driver_lock; struct cmd_ctrl_node* cur_cmd; int /*<<< orphan*/  seqnum; } ;
struct cmd_header {int /*<<< orphan*/  seqnum; int /*<<< orphan*/  command; int /*<<< orphan*/  size; } ;
struct cmd_ctrl_node {struct cmd_header* cmdbuf; } ;

/* Variables and functions */
 scalar_t__ CMD_802_11_ASSOCIATE ; 
 scalar_t__ CMD_802_11_DEEP_SLEEP ; 
 scalar_t__ CMD_802_11_SCAN ; 
 scalar_t__ DNLD_RES_RECEIVED ; 
 int HZ ; 
 int /*<<< orphan*/  LBS_DEB_CMD ; 
 int /*<<< orphan*/  MVMS_CMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct lbs_private*,struct cmd_ctrl_node*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,void*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC9 (struct lbs_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct lbs_private *priv,
			       struct cmd_ctrl_node *cmdnode)
{
	unsigned long flags;
	struct cmd_header *cmd;
	uint16_t cmdsize;
	uint16_t command;
	int timeo = 3 * HZ;
	int ret;

	cmd = cmdnode->cmdbuf;

	FUNC7(&priv->driver_lock, flags);
	priv->seqnum++;
	cmd->seqnum = FUNC0(priv->seqnum);
	priv->cur_cmd = cmdnode;
	FUNC8(&priv->driver_lock, flags);

	cmdsize = FUNC4(cmd->size);
	command = FUNC4(cmd->command);

	/* These commands take longer */
	if (command == CMD_802_11_SCAN || command == CMD_802_11_ASSOCIATE)
		timeo = 5 * HZ;

	FUNC2("DNLD_CMD: command 0x%04x, seq %d, size %d\n",
		     command, FUNC4(cmd->seqnum), cmdsize);
	FUNC3(LBS_DEB_CMD, "DNLD_CMD", (void *) cmdnode->cmdbuf, cmdsize);

	ret = priv->hw_host_to_card(priv, MVMS_CMD, (u8 *) cmd, cmdsize);

	if (ret) {
		FUNC6(priv->dev, "DNLD_CMD: hw_host_to_card failed: %d\n",
			    ret);
		/* Reset dnld state machine, report failure */
		priv->dnld_sent = DNLD_RES_RECEIVED;
		FUNC1(priv, cmdnode, ret);
	}

	if (command == CMD_802_11_DEEP_SLEEP) {
		if (priv->is_auto_deep_sleep_enabled) {
			priv->wakeup_dev_required = 1;
			priv->dnld_sent = 0;
		}
		priv->is_deep_sleep = 1;
		FUNC1(priv, cmdnode, 0);
	} else {
		/* Setup the timer after transmit command */
		FUNC5(&priv->command_timer, jiffies + timeo);
	}
}