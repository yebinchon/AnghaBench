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
typedef  int uint16_t ;
struct sleep_params {int sp_error; int sp_offset; int sp_stabletime; int sp_reserved; int /*<<< orphan*/  sp_extsleepclk; int /*<<< orphan*/  sp_calcontrol; } ;
struct lbs_private {int dummy; } ;
struct TYPE_2__ {void* size; } ;
struct cmd_ds_802_11_sleep_params {void* reserved; int /*<<< orphan*/  externalsleepclk; int /*<<< orphan*/  calcontrol; void* stabletime; void* offset; void* error; void* action; TYPE_1__ hdr; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_802_11_SLEEP_PARAMS ; 
 int CMD_ACT_GET ; 
 void* FUNC0 (int) ; 
 int FUNC1 (struct lbs_private*,int /*<<< orphan*/ ,struct cmd_ds_802_11_sleep_params*) ; 
 int /*<<< orphan*/  FUNC2 (char*,void*,void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct cmd_ds_802_11_sleep_params*,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct lbs_private *priv, uint16_t cmd_action,
				struct sleep_params *sp)
{
	struct cmd_ds_802_11_sleep_params cmd;
	int ret;

	if (cmd_action == CMD_ACT_GET) {
		FUNC4(&cmd, 0, sizeof(cmd));
	} else {
		cmd.error = FUNC0(sp->sp_error);
		cmd.offset = FUNC0(sp->sp_offset);
		cmd.stabletime = FUNC0(sp->sp_stabletime);
		cmd.calcontrol = sp->sp_calcontrol;
		cmd.externalsleepclk = sp->sp_extsleepclk;
		cmd.reserved = FUNC0(sp->sp_reserved);
	}
	cmd.hdr.size = FUNC0(sizeof(cmd));
	cmd.action = FUNC0(cmd_action);

	ret = FUNC1(priv, CMD_802_11_SLEEP_PARAMS, &cmd);

	if (!ret) {
		FUNC2("error 0x%x, offset 0x%x, stabletime 0x%x, "
			    "calcontrol 0x%x extsleepclk 0x%x\n",
			    FUNC3(cmd.error), FUNC3(cmd.offset),
			    FUNC3(cmd.stabletime), cmd.calcontrol,
			    cmd.externalsleepclk);

		sp->sp_error = FUNC3(cmd.error);
		sp->sp_offset = FUNC3(cmd.offset);
		sp->sp_stabletime = FUNC3(cmd.stabletime);
		sp->sp_calcontrol = cmd.calcontrol;
		sp->sp_extsleepclk = cmd.externalsleepclk;
		sp->sp_reserved = FUNC3(cmd.reserved);
	}

	return ret;
}