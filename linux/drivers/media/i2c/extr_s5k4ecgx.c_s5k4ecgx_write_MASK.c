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
typedef  int u16 ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_CMDBUF0_ADDR ; 
 int /*<<< orphan*/  REG_CMDWR_ADDRH ; 
 int /*<<< orphan*/  REG_CMDWR_ADDRL ; 
 int /*<<< orphan*/  debug ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,struct i2c_client*,char*,int,int) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client, u32 addr, u16 val)
{
	u16 high = addr >> 16, low = addr & 0xffff;
	int ret;

	FUNC1(3, debug, client, "write: 0x%08x : 0x%04x\n", addr, val);

	ret = FUNC0(client, REG_CMDWR_ADDRH, high);
	if (!ret)
		ret = FUNC0(client, REG_CMDWR_ADDRL, low);
	if (!ret)
		ret = FUNC0(client, REG_CMDBUF0_ADDR, val);

	return ret;
}