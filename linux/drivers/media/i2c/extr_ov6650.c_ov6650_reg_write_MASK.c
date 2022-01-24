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
typedef  unsigned char u8 ;
struct i2c_msg {int len; unsigned char* buf; int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned char) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client, u8 reg, u8 val)
{
	int ret;
	unsigned char data[2] = { reg, val };
	struct i2c_msg msg = {
		.addr	= client->addr,
		.flags	= 0,
		.len	= 2,
		.buf	= data,
	};

	ret = FUNC1(client->adapter, &msg, 1);
	FUNC2(100);

	if (ret < 0) {
		FUNC0(&client->dev, "Failed writing register 0x%02x!\n", reg);
		return ret;
	}
	return 0;
}