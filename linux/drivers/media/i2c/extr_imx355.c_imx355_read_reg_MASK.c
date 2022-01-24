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
struct i2c_msg {int len; struct i2c_msg* buf; scalar_t__ flags; int /*<<< orphan*/  addr; } ;
typedef  struct i2c_msg u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct imx355 {int /*<<< orphan*/  sd; } ;
struct i2c_client {int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int FUNC0 (struct i2c_msg*) ; 
 int EINVAL ; 
 int EIO ; 
 scalar_t__ I2C_M_RD ; 
 int FUNC1 (struct i2c_msg*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct i2c_msg*) ; 
 struct i2c_client* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct imx355 *imx355, u16 reg, u32 len, u32 *val)
{
	struct i2c_client *client = FUNC4(&imx355->sd);
	struct i2c_msg msgs[2];
	u8 addr_buf[2];
	u8 data_buf[4] = { 0 };
	int ret;

	if (len > 4)
		return -EINVAL;

	FUNC3(reg, addr_buf);
	/* Write register address */
	msgs[0].addr = client->addr;
	msgs[0].flags = 0;
	msgs[0].len = FUNC0(addr_buf);
	msgs[0].buf = addr_buf;

	/* Read data from register */
	msgs[1].addr = client->addr;
	msgs[1].flags = I2C_M_RD;
	msgs[1].len = len;
	msgs[1].buf = &data_buf[4 - len];

	ret = FUNC2(client->adapter, msgs, FUNC0(msgs));
	if (ret != FUNC0(msgs))
		return -EIO;

	*val = FUNC1(data_buf);

	return 0;
}