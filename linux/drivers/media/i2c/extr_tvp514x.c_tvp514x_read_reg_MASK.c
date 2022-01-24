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
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct i2c_client* FUNC2 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*,char*,int) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd, u8 reg)
{
	int err, retry = 0;
	struct i2c_client *client = FUNC2(sd);

read_again:

	err = FUNC0(client, reg);
	if (err < 0) {
		if (retry <= I2C_RETRY_COUNT) {
			FUNC3(sd, "Read: retry ... %d\n", retry);
			retry++;
			FUNC1(10);
			goto read_again;
		}
	}

	return err;
}