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
struct lbs_private {int dummy; } ;
struct TYPE_2__ {void* size; } ;
struct cmd_ds_802_11_ps_mode {TYPE_1__ hdr; void* multipledtim; void* action; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_802_11_PS_MODE ; 
 int EOPNOTSUPP ; 
 int PS_MODE_ACTION_ENTER_PS ; 
 int PS_MODE_ACTION_EXIT_PS ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct lbs_private*,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int FUNC2 (struct lbs_private*,int /*<<< orphan*/ ,struct cmd_ds_802_11_ps_mode*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct cmd_ds_802_11_ps_mode*,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct lbs_private *priv, u16 cmd_action, bool block)
{
	struct cmd_ds_802_11_ps_mode cmd;
	int ret = 0;

	FUNC4(&cmd, 0, sizeof(cmd));
	cmd.hdr.size = FUNC0(sizeof(cmd));
	cmd.action = FUNC0(cmd_action);

	if (cmd_action == PS_MODE_ACTION_ENTER_PS) {
		FUNC3("PS_MODE: action ENTER_PS\n");
		cmd.multipledtim = FUNC0(1);  /* Default DTIM multiple */
	} else if (cmd_action == PS_MODE_ACTION_EXIT_PS) {
		FUNC3("PS_MODE: action EXIT_PS\n");
	} else {
		/* We don't handle CONFIRM_SLEEP here because it needs to
		 * be fastpathed to the firmware.
		 */
		FUNC3("PS_MODE: unknown action 0x%X\n", cmd_action);
		ret = -EOPNOTSUPP;
		goto out;
	}

	if (block)
		ret = FUNC2(priv, CMD_802_11_PS_MODE, &cmd);
	else
		FUNC1(priv, CMD_802_11_PS_MODE, &cmd.hdr, sizeof (cmd));

out:
	return ret;
}