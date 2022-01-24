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
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int I2C_RETRY_COUNT ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*,char*,int) ; 
 struct i2c_client* FUNC3 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_subdev*,char*,int) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd, u8 addr, u8 value)
{
	struct i2c_client *c;
	int retry;
	int error;

	c = FUNC3(sd);

	for (retry = 0; retry < I2C_RETRY_COUNT; retry++) {
		error = FUNC0(c, addr, value);

		if (error >= 0)
			return 0;

		FUNC4(sd, "Write: retry ... %d\n", retry);
		FUNC1(10);
	}
	FUNC2(sd, "TVP7002 write error %d\n", error);
	return error;
}