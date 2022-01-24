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
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*) ; 
 struct i2c_client* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct v4l2_subdev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_subdev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_subdev*,char*,char const*,...) ; 
 struct i2c_client* FUNC6 (struct v4l2_subdev*) ; 

__attribute__((used)) static struct i2c_client *FUNC7(struct v4l2_subdev *sd, const char *desc,
					       u8 addr, u8 io_reg)
{
	struct i2c_client *client = FUNC6(sd);
	struct i2c_client *cp;

	FUNC4(sd, io_reg, addr << 1);

	if (addr == 0) {
		FUNC5(sd, "no %s i2c addr configured\n", desc);
		return NULL;
	}

	cp = FUNC2(client->adapter, FUNC3(sd, io_reg) >> 1);
	if (FUNC0(cp)) {
		FUNC5(sd, "register %s on i2c addr 0x%x failed with %ld\n",
			 desc, addr, FUNC1(cp));
		cp = NULL;
	}

	return cp;
}