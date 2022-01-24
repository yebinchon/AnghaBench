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
typedef  int /*<<< orphan*/  u16 ;
struct i2c_msg {int len; int /*<<< orphan*/ * buf; scalar_t__ flags; int /*<<< orphan*/  addr; } ;
struct i2c_client {int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const struct i2c_client *client,
			       u16 command, u16 data)
{
	struct i2c_msg msg;
	u8 buf[4];
	int ret;

	command = FUNC2(command);
	data = FUNC2(data);

	FUNC1(buf + 0, &command, 2);
	FUNC1(buf + 2, &data,    2);

	msg.addr  = client->addr;
	msg.flags = 0;
	msg.len   = 4;
	msg.buf   = buf;

	/*
	 * i2c_transfer return message length, but this function should
	 * return 0 if correct case.
	 */
	ret = FUNC0(client->adapter, &msg, 1);

	return ret >= 0 ? 0 : ret;
}