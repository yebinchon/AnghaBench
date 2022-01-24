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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct mlxsw_core {TYPE_2__* bus_info; int /*<<< orphan*/  bus_priv; TYPE_1__* bus; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int (* cmd_exec ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,char*,size_t,char*,size_t,scalar_t__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int EOPNOTSUPP ; 
 int ETIMEDOUT ; 
 scalar_t__ MLXSW_CMD_STATUS_OK ; 
 scalar_t__ MLXSW_CMD_STATUS_RUNNING_RESET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_core*,char*,size_t) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,char*,size_t,char*,size_t,scalar_t__*) ; 

int FUNC7(struct mlxsw_core *mlxsw_core, u16 opcode, u8 opcode_mod,
		   u32 in_mod, bool out_mbox_direct, bool reset_ok,
		   char *in_mbox, size_t in_mbox_size,
		   char *out_mbox, size_t out_mbox_size)
{
	u8 status;
	int err;

	FUNC0(in_mbox_size % sizeof(u32) || out_mbox_size % sizeof(u32));
	if (!mlxsw_core->bus->cmd_exec)
		return -EOPNOTSUPP;

	FUNC1(mlxsw_core->bus_info->dev, "Cmd exec (opcode=%x(%s),opcode_mod=%x,in_mod=%x)\n",
		opcode, FUNC3(opcode), opcode_mod, in_mod);
	if (in_mbox) {
		FUNC1(mlxsw_core->bus_info->dev, "Input mailbox:\n");
		FUNC5(mlxsw_core, in_mbox, in_mbox_size);
	}

	err = mlxsw_core->bus->cmd_exec(mlxsw_core->bus_priv, opcode,
					opcode_mod, in_mod, out_mbox_direct,
					in_mbox, in_mbox_size,
					out_mbox, out_mbox_size, &status);

	if (!err && out_mbox) {
		FUNC1(mlxsw_core->bus_info->dev, "Output mailbox:\n");
		FUNC5(mlxsw_core, out_mbox, out_mbox_size);
	}

	if (reset_ok && err == -EIO &&
	    status == MLXSW_CMD_STATUS_RUNNING_RESET) {
		err = 0;
	} else if (err == -EIO && status != MLXSW_CMD_STATUS_OK) {
		FUNC2(mlxsw_core->bus_info->dev, "Cmd exec failed (opcode=%x(%s),opcode_mod=%x,in_mod=%x,status=%x(%s))\n",
			opcode, FUNC3(opcode), opcode_mod,
			in_mod, status, FUNC4(status));
	} else if (err == -ETIMEDOUT) {
		FUNC2(mlxsw_core->bus_info->dev, "Cmd exec timed-out (opcode=%x(%s),opcode_mod=%x,in_mod=%x)\n",
			opcode, FUNC3(opcode), opcode_mod,
			in_mod);
	}

	return err;
}