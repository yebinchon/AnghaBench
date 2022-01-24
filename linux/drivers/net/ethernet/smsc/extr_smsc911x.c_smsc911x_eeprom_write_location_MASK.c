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
typedef  int u8 ;
typedef  int u32 ;
struct smsc911x_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BYTE_TEST ; 
 int E2P_CMD_EPC_CMD_ERASE_ ; 
 int E2P_CMD_EPC_CMD_WRITE_ ; 
 int /*<<< orphan*/  E2P_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct smsc911x_data*,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  drv ; 
 int FUNC1 (struct smsc911x_data*,int) ; 
 int FUNC2 (struct smsc911x_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct smsc911x_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct smsc911x_data *pdata,
					  u8 address, u8 data)
{
	u32 op = E2P_CMD_EPC_CMD_ERASE_ | address;
	u32 temp;
	int ret;

	FUNC0(pdata, drv, "address 0x%x, data 0x%x", address, data);
	ret = FUNC1(pdata, op);

	if (!ret) {
		op = E2P_CMD_EPC_CMD_WRITE_ | address;
		FUNC3(pdata, E2P_DATA, (u32)data);

		/* Workaround for hardware read-after-write restriction */
		temp = FUNC2(pdata, BYTE_TEST);

		ret = FUNC1(pdata, op);
	}

	return ret;
}