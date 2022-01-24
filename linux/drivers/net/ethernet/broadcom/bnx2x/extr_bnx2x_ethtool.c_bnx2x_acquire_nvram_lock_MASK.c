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
typedef  int u32 ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int BNX2X_MSG_ETHTOOL ; 
 int BNX2X_MSG_NVM ; 
 int BNX2X_NVRAM_TIMEOUT_COUNT ; 
 int FUNC0 (struct bnx2x*) ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int EBUSY ; 
 int /*<<< orphan*/  HW_LOCK_RESOURCE_NVRAM ; 
 int MCPR_NVM_SW_ARB_ARB_ARB1 ; 
 int MCPR_NVM_SW_ARB_ARB_REQ_SET1 ; 
 int /*<<< orphan*/  MCP_REG_MCPR_NVM_SW_ARB ; 
 int FUNC3 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct bnx2x *bp)
{
	int port = FUNC0(bp);
	int count, i;
	u32 val;

	/* acquire HW lock: protect against other PFs in PF Direct Assignment */
	FUNC5(bp, HW_LOCK_RESOURCE_NVRAM);

	/* adjust timeout for emulation/FPGA */
	count = BNX2X_NVRAM_TIMEOUT_COUNT;
	if (FUNC1(bp))
		count *= 100;

	/* request access to nvram interface */
	FUNC4(bp, MCP_REG_MCPR_NVM_SW_ARB,
	       (MCPR_NVM_SW_ARB_ARB_REQ_SET1 << port));

	for (i = 0; i < count*10; i++) {
		val = FUNC3(bp, MCP_REG_MCPR_NVM_SW_ARB);
		if (val & (MCPR_NVM_SW_ARB_ARB_ARB1 << port))
			break;

		FUNC7(5);
	}

	if (!(val & (MCPR_NVM_SW_ARB_ARB_ARB1 << port))) {
		FUNC2(BNX2X_MSG_ETHTOOL | BNX2X_MSG_NVM,
		   "cannot get access to nvram interface\n");
		FUNC6(bp, HW_LOCK_RESOURCE_NVRAM);
		return -EBUSY;
	}

	return 0;
}