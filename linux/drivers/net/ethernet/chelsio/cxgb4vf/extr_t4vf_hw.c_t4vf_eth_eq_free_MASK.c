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
struct fw_eq_eth_cmd {void* eqid_pkd; void* alloc_to_len16; void* op_to_vfn; } ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int FW_CMD_EXEC_F ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FW_CMD_REQUEST_F ; 
 int /*<<< orphan*/  FW_EQ_ETH_CMD ; 
 int FUNC1 (unsigned int) ; 
 int FW_EQ_ETH_CMD_FREE_F ; 
 int FUNC2 (struct fw_eq_eth_cmd) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct fw_eq_eth_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct adapter*,struct fw_eq_eth_cmd*,int,int /*<<< orphan*/ *) ; 

int FUNC6(struct adapter *adapter, unsigned int eqid)
{
	struct fw_eq_eth_cmd cmd;

	FUNC4(&cmd, 0, sizeof(cmd));
	cmd.op_to_vfn = FUNC3(FUNC0(FW_EQ_ETH_CMD) |
				    FW_CMD_REQUEST_F |
				    FW_CMD_EXEC_F);
	cmd.alloc_to_len16 = FUNC3(FW_EQ_ETH_CMD_FREE_F |
					 FUNC2(cmd));
	cmd.eqid_pkd = FUNC3(FUNC1(eqid));
	return FUNC5(adapter, &cmd, sizeof(cmd), NULL);
}