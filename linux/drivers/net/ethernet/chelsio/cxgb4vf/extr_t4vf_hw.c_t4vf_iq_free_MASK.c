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
struct fw_iq_cmd {void* fl1id; void* fl0id; void* iqid; void* type_to_iqandstindex; void* alloc_to_len16; void* op_to_vfn; } ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int FW_CMD_EXEC_F ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FW_CMD_REQUEST_F ; 
 int /*<<< orphan*/  FW_IQ_CMD ; 
 int FW_IQ_CMD_FREE_F ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (struct fw_iq_cmd) ; 
 void* FUNC3 (unsigned int) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct fw_iq_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct adapter*,struct fw_iq_cmd*,int,int /*<<< orphan*/ *) ; 

int FUNC7(struct adapter *adapter, unsigned int iqtype,
		 unsigned int iqid, unsigned int fl0id, unsigned int fl1id)
{
	struct fw_iq_cmd cmd;

	FUNC5(&cmd, 0, sizeof(cmd));
	cmd.op_to_vfn = FUNC4(FUNC0(FW_IQ_CMD) |
				    FW_CMD_REQUEST_F |
				    FW_CMD_EXEC_F);
	cmd.alloc_to_len16 = FUNC4(FW_IQ_CMD_FREE_F |
					 FUNC2(cmd));
	cmd.type_to_iqandstindex =
		FUNC4(FUNC1(iqtype));

	cmd.iqid = FUNC3(iqid);
	cmd.fl0id = FUNC3(fl0id);
	cmd.fl1id = FUNC3(fl1id);
	return FUNC6(adapter, &cmd, sizeof(cmd), NULL);
}