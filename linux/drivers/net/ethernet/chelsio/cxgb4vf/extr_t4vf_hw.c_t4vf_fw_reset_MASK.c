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
struct fw_reset_cmd {void* retval_len16; void* op_to_write; } ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FW_CMD_WRITE_F ; 
 int FUNC1 (struct fw_reset_cmd) ; 
 int /*<<< orphan*/  FW_RESET_CMD ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct fw_reset_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct adapter*,struct fw_reset_cmd*,int,int /*<<< orphan*/ *) ; 

int FUNC5(struct adapter *adapter)
{
	struct fw_reset_cmd cmd;

	FUNC3(&cmd, 0, sizeof(cmd));
	cmd.op_to_write = FUNC2(FUNC0(FW_RESET_CMD) |
				      FW_CMD_WRITE_F);
	cmd.retval_len16 = FUNC2(FUNC1(cmd));
	return FUNC4(adapter, &cmd, sizeof(cmd), NULL);
}