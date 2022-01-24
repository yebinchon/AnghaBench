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
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  debug ; 
 int FUNC0 (struct i2c_client*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*,char*,int,int) ; 
 struct i2c_client* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd, int subaddr, int val)
{
	struct i2c_client *client = FUNC3(sd);
	unsigned char buffer[2];

	FUNC1(2, debug, sd, "In tda7432_write\n");
	FUNC1(1, debug, sd, "Writing %d 0x%x\n", subaddr, val);
	buffer[0] = subaddr;
	buffer[1] = val;
	if (2 != FUNC0(client, buffer, 2)) {
		FUNC2(sd, "I/O error, trying (write %d 0x%x)\n",
		       subaddr, val);
		return -1;
	}
	return 0;
}