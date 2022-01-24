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
struct smsc9420_pdata {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  E2P_CMD ; 
 int E2P_CMD_EPC_BUSY_ ; 
 int E2P_CMD_EPC_TIMEOUT_ ; 
 int EAGAIN ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  hw ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct smsc9420_pdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct smsc9420_pdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct smsc9420_pdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct smsc9420_pdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct smsc9420_pdata*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct smsc9420_pdata *pd, u32 op)
{
	int timeout = 100;
	u32 e2cmd;

	FUNC1(pd, hw, pd->dev, "op 0x%08x\n", op);
	if (FUNC4(pd, E2P_CMD) & E2P_CMD_EPC_BUSY_) {
		FUNC3(pd, hw, pd->dev, "Busy at start\n");
		return -EBUSY;
	}

	e2cmd = op | E2P_CMD_EPC_BUSY_;
	FUNC5(pd, E2P_CMD, e2cmd);

	do {
		FUNC0(1);
		e2cmd = FUNC4(pd, E2P_CMD);
	} while ((e2cmd & E2P_CMD_EPC_BUSY_) && (--timeout));

	if (!timeout) {
		FUNC2(pd, hw, pd->dev, "TIMED OUT\n");
		return -EAGAIN;
	}

	if (e2cmd & E2P_CMD_EPC_TIMEOUT_) {
		FUNC2(pd, hw, pd->dev,
			   "Error occurred during eeprom operation\n");
		return -EINVAL;
	}

	return 0;
}