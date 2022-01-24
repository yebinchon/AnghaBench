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
struct i2c_msg {int len; int* buf; int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_M_RD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  msp_debug ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client, int dev, int addr)
{
	int err, retval;
	u8 write[3];
	u8 read[2];
	struct i2c_msg msgs[2] = {
		{
			.addr = client->addr,
			.len = 3,
			.buf = write
		},
		{
			.addr = client->addr,
			.flags = I2C_M_RD,
			.len = 2,
			.buf = read
		}
	};

	write[0] = dev + 1;
	write[1] = addr >> 8;
	write[2] = addr & 0xff;

	for (err = 0; err < 3; err++) {
		if (FUNC2(client->adapter, msgs, 2) == 2)
			break;
		FUNC1(&client->dev, "I/O error #%d (read 0x%02x/0x%02x)\n", err,
		       dev, addr);
		FUNC5(FUNC3(10));
	}
	if (err == 3) {
		FUNC1(&client->dev, "resetting chip, sound will go off.\n");
		FUNC4(client);
		return -1;
	}
	retval = read[0] << 8 | read[1];
	FUNC0(&client->dev, 3, msp_debug, "msp_read(0x%x, 0x%x): 0x%x\n",
			dev, addr, retval);
	return retval;
}