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
typedef  size_t u8 ;
typedef  size_t u32 ;
struct smsc9420_pdata {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 size_t E2P_CMD_EPC_CMD_READ_ ; 
 int /*<<< orphan*/  E2P_DATA ; 
 int /*<<< orphan*/  hw ; 
 int /*<<< orphan*/  FUNC0 (struct smsc9420_pdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t) ; 
 int FUNC1 (struct smsc9420_pdata*,size_t) ; 
 size_t FUNC2 (struct smsc9420_pdata*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct smsc9420_pdata *pd,
					 u8 address, u8 *data)
{
	u32 op = E2P_CMD_EPC_CMD_READ_ | address;
	int ret;

	FUNC0(pd, hw, pd->dev, "address 0x%x\n", address);
	ret = FUNC1(pd, op);

	if (!ret)
		data[address] = FUNC2(pd, E2P_DATA);

	return ret;
}