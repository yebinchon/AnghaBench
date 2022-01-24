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
typedef  int u32 ;
struct TYPE_3__ {int ctrl_to_fn; int r; int /*<<< orphan*/ * data; int /*<<< orphan*/  select_naccess; } ;
struct TYPE_4__ {TYPE_1__ pcie; } ;
struct fw_ldst_cmd {TYPE_2__ u; void* cycles_to_len16; void* op_to_addrspace; } ;
struct adapter {int /*<<< orphan*/  mbox; int /*<<< orphan*/  pf; } ;
typedef  int /*<<< orphan*/  ldst_cmd ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FW_CMD_READ_F ; 
 int FW_CMD_REQUEST_F ; 
 int /*<<< orphan*/  FW_LDST_ADDRSPC_FUNC_PCIE ; 
 int /*<<< orphan*/  FW_LDST_CMD ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FW_LDST_CMD_LC_F ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct fw_ldst_cmd) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct fw_ldst_cmd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*,int,int*) ; 
 int FUNC9 (struct adapter*,int /*<<< orphan*/ ,struct fw_ldst_cmd*,int,struct fw_ldst_cmd*) ; 

u32 FUNC10(struct adapter *adap, int reg)
{
	u32 val, ldst_addrspace;

	/* If fw_attach != 0, construct and send the Firmware LDST Command to
	 * retrieve the specified PCI-E Configuration Space register.
	 */
	struct fw_ldst_cmd ldst_cmd;
	int ret;

	FUNC7(&ldst_cmd, 0, sizeof(ldst_cmd));
	ldst_addrspace = FUNC1(FW_LDST_ADDRSPC_FUNC_PCIE);
	ldst_cmd.op_to_addrspace = FUNC6(FUNC0(FW_LDST_CMD) |
					       FW_CMD_REQUEST_F |
					       FW_CMD_READ_F |
					       ldst_addrspace);
	ldst_cmd.cycles_to_len16 = FUNC6(FUNC4(ldst_cmd));
	ldst_cmd.u.pcie.select_naccess = FUNC3(1);
	ldst_cmd.u.pcie.ctrl_to_fn =
		(FW_LDST_CMD_LC_F | FUNC2(adap->pf));
	ldst_cmd.u.pcie.r = reg;

	/* If the LDST Command succeeds, return the result, otherwise
	 * fall through to reading it directly ourselves ...
	 */
	ret = FUNC9(adap, adap->mbox, &ldst_cmd, sizeof(ldst_cmd),
			 &ldst_cmd);
	if (ret == 0)
		val = FUNC5(ldst_cmd.u.pcie.data[0]);
	else
		/* Read the desired Configuration Space register via the PCI-E
		 * Backdoor mechanism.
		 */
		FUNC8(adap, reg, &val);
	return val;
}