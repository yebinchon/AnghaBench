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
struct i2c_client {int dummy; } ;
struct bt866 {size_t* reg; int /*<<< orphan*/  sd; } ;

/* Variables and functions */
 int /*<<< orphan*/  debug ; 
 int FUNC0 (struct i2c_client*,size_t*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,struct i2c_client*,char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,char*,...) ; 

__attribute__((used)) static int FUNC6(struct bt866 *encoder, u8 subaddr, u8 data)
{
	struct i2c_client *client = FUNC3(&encoder->sd);
	u8 buffer[2];
	int err;

	buffer[0] = subaddr;
	buffer[1] = data;

	encoder->reg[subaddr] = data;

	FUNC4(1, debug, client, "write 0x%02x = 0x%02x\n", subaddr, data);

	for (err = 0; err < 3;) {
		if (FUNC0(client, buffer, 2) == 2)
			break;
		err++;
		FUNC5(client, "error #%d writing to 0x%02x\n",
				err, subaddr);
		FUNC2(FUNC1(100));
	}
	if (err == 3) {
		FUNC5(client, "giving up\n");
		return -1;
	}

	return 0;
}