#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int* bytes; } ;
struct CHIPSTATE {TYPE_1__ shadow; struct v4l2_subdev sd; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  debug ; 
 int FUNC1 (struct i2c_client*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,int,...) ; 
 struct i2c_client* FUNC3 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_subdev*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_subdev*,char*,int,...) ; 

__attribute__((used)) static int FUNC6(struct CHIPSTATE *chip, int subaddr, int val)
{
	struct v4l2_subdev *sd = &chip->sd;
	struct i2c_client *c = FUNC3(sd);
	unsigned char buffer[2];
	int rc;

	if (subaddr < 0) {
		FUNC2(1, debug, sd, "chip_write: 0x%x\n", val);
		chip->shadow.bytes[1] = val;
		buffer[0] = val;
		rc = FUNC1(c, buffer, 1);
		if (rc != 1) {
			FUNC5(sd, "I/O error (write 0x%x)\n", val);
			if (rc < 0)
				return rc;
			return -EIO;
		}
	} else {
		if (subaddr + 1 >= FUNC0(chip->shadow.bytes)) {
			FUNC4(sd,
				"Tried to access a non-existent register: %d\n",
				subaddr);
			return -EINVAL;
		}

		FUNC2(1, debug, sd, "chip_write: reg%d=0x%x\n",
			subaddr, val);
		chip->shadow.bytes[subaddr+1] = val;
		buffer[0] = subaddr;
		buffer[1] = val;
		rc = FUNC1(c, buffer, 2);
		if (rc != 2) {
			FUNC5(sd, "I/O error (write reg%d=0x%x)\n",
				subaddr, val);
			if (rc < 0)
				return rc;
			return -EIO;
		}
	}
	return 0;
}