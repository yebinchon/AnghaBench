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
struct fw_vi_cmd {int /*<<< orphan*/  type_viid; int /*<<< orphan*/  portid_pkd; void* alloc_to_len16; void* op_to_vfn; } ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int FW_CMD_EXEC_F ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FW_CMD_REQUEST_F ; 
 int FW_CMD_WRITE_F ; 
 int FUNC1 (struct fw_vi_cmd) ; 
 int /*<<< orphan*/  FW_VI_CMD ; 
 int FW_VI_CMD_ALLOC_F ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct fw_vi_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct adapter*,struct fw_vi_cmd*,int,struct fw_vi_cmd*) ; 

int FUNC8(struct adapter *adapter, int port_id)
{
	struct fw_vi_cmd cmd, rpl;
	int v;

	/*
	 * Execute a VI command to allocate Virtual Interface and return its
	 * VIID.
	 */
	FUNC6(&cmd, 0, sizeof(cmd));
	cmd.op_to_vfn = FUNC5(FUNC0(FW_VI_CMD) |
				    FW_CMD_REQUEST_F |
				    FW_CMD_WRITE_F |
				    FW_CMD_EXEC_F);
	cmd.alloc_to_len16 = FUNC5(FUNC1(cmd) |
					 FW_VI_CMD_ALLOC_F);
	cmd.portid_pkd = FUNC2(port_id);
	v = FUNC7(adapter, &cmd, sizeof(cmd), &rpl);
	if (v)
		return v;

	return FUNC3(FUNC4(rpl.type_viid));
}