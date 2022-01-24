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
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct lbs_private {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  mac; int /*<<< orphan*/  bbp_rf; } ;
struct TYPE_3__ {void* size; } ;
struct cmd_ds_reg_access {TYPE_2__ value; void* offset; void* action; TYPE_1__ hdr; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CMD_ACT_GET ; 
 scalar_t__ CMD_BBP_REG_ACCESS ; 
 scalar_t__ CMD_MAC_REG_ACCESS ; 
 scalar_t__ CMD_RF_REG_ACCESS ; 
 int EINVAL ; 
 void* FUNC1 (scalar_t__) ; 
 int FUNC2 (struct lbs_private*,scalar_t__,struct cmd_ds_reg_access*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cmd_ds_reg_access*,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct lbs_private *priv, u16 reg, u16 offset, u32 *value)
{
	struct cmd_ds_reg_access cmd;
	int ret = 0;

	FUNC0(value == NULL);

	FUNC4(&cmd, 0, sizeof(cmd));
	cmd.hdr.size = FUNC1(sizeof(cmd));
	cmd.action = FUNC1(CMD_ACT_GET);
	cmd.offset = FUNC1(offset);

	if (reg != CMD_MAC_REG_ACCESS &&
	    reg != CMD_BBP_REG_ACCESS &&
	    reg != CMD_RF_REG_ACCESS) {
		ret = -EINVAL;
		goto out;
	}

	ret = FUNC2(priv, reg, &cmd);
	if (!ret) {
		if (reg == CMD_BBP_REG_ACCESS || reg == CMD_RF_REG_ACCESS)
			*value = cmd.value.bbp_rf;
		else if (reg == CMD_MAC_REG_ACCESS)
			*value = FUNC3(cmd.value.mac);
	}

out:
	return ret;
}