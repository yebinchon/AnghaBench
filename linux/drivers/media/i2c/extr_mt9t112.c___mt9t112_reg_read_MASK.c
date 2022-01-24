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
typedef  int u16 ;
struct i2c_msg {int len; int /*<<< orphan*/ * buf; scalar_t__ flags; int /*<<< orphan*/  addr; } ;
struct i2c_client {int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 scalar_t__ I2C_M_RD ; 
 int FUNC0 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(const struct i2c_client *client, u16 command)
{
	struct i2c_msg msg[2];
	u8 buf[2];
	int ret;

	command = FUNC2(command);

	msg[0].addr  = client->addr;
	msg[0].flags = 0;
	msg[0].len   = 2;
	msg[0].buf   = (u8 *)&command;

	msg[1].addr  = client->addr;
	msg[1].flags = I2C_M_RD;
	msg[1].len   = 2;
	msg[1].buf   = buf;

	/*
	 * If return value of this function is < 0, it means error, else,
	 * below 16bit is valid data.
	 */
	ret = FUNC0(client->adapter, msg, 2);
	if (ret < 0)
		return ret;

	FUNC1(&ret, buf, 2);

	return FUNC2(ret);
}