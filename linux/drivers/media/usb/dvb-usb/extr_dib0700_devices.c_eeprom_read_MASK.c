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
typedef  int /*<<< orphan*/  u8 ;
struct i2c_msg {int addr; int len; int /*<<< orphan*/ * buf; int /*<<< orphan*/  flags; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int EREMOTEIO ; 
 int /*<<< orphan*/  I2C_M_RD ; 
 int FUNC0 (struct i2c_adapter*,struct i2c_msg*,int) ; 

__attribute__((used)) static int FUNC1(struct i2c_adapter *adap,u8 adrs,u8 *pval)
{
	struct i2c_msg msg[2] = {
		{ .addr = 0x50, .flags = 0,        .buf = &adrs, .len = 1 },
		{ .addr = 0x50, .flags = I2C_M_RD, .buf = pval,  .len = 1 },
	};
	if (FUNC0(adap, msg, 2) != 2) return -EREMOTEIO;
	return 0;
}