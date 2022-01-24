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
struct fw_vi_cmd {int /*<<< orphan*/  type_viid; void* alloc_to_len16; void* op_to_vfn; } ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int FW_CMD_EXEC_F ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FW_CMD_REQUEST_F ; 
 int FUNC1 (struct fw_vi_cmd) ; 
 int /*<<< orphan*/  FW_VI_CMD ; 
 int FW_VI_CMD_FREE_F ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct fw_vi_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct adapter*,struct fw_vi_cmd*,int,int /*<<< orphan*/ *) ; 

int FUNC7(struct adapter *adapter, int viid)
{
	struct fw_vi_cmd cmd;

	/*
	 * Execute a VI command to free the Virtual Interface.
	 */
	FUNC5(&cmd, 0, sizeof(cmd));
	cmd.op_to_vfn = FUNC4(FUNC0(FW_VI_CMD) |
				    FW_CMD_REQUEST_F |
				    FW_CMD_EXEC_F);
	cmd.alloc_to_len16 = FUNC4(FUNC1(cmd) |
					 FW_VI_CMD_FREE_F);
	cmd.type_viid = FUNC3(FUNC2(viid));
	return FUNC6(adapter, &cmd, sizeof(cmd), NULL);
}