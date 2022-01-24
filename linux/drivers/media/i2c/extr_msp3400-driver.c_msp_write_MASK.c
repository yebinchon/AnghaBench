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
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC2 (struct i2c_client*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  msp_debug ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client, int dev, int addr, int val)
{
	int err;
	u8 buffer[5];

	buffer[0] = dev;
	buffer[1] = addr >> 8;
	buffer[2] = addr &  0xff;
	buffer[3] = val  >> 8;
	buffer[4] = val  &  0xff;

	FUNC0(&client->dev, 3, msp_debug, "msp_write(0x%x, 0x%x, 0x%x)\n",
			dev, addr, val);
	for (err = 0; err < 3; err++) {
		if (FUNC2(client, buffer, 5) == 5)
			break;
		FUNC1(&client->dev, "I/O error #%d (write 0x%02x/0x%02x)\n", err,
		       dev, addr);
		FUNC5(FUNC3(10));
	}
	if (err == 3) {
		FUNC1(&client->dev, "resetting chip, sound will go off.\n");
		FUNC4(client);
		return -1;
	}
	return 0;
}