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
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  OV5647_REG_CHIPID_H ; 
 int /*<<< orphan*/  OV5647_REG_CHIPID_L ; 
 int /*<<< orphan*/  OV5647_SW_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct v4l2_subdev*,int /*<<< orphan*/ ,int) ; 
 struct i2c_client* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd)
{
	u8 read;
	int ret;
	struct i2c_client *client = FUNC3(sd);

	ret = FUNC2(sd, OV5647_SW_RESET, 0x01);
	if (ret < 0)
		return ret;

	ret = FUNC1(sd, OV5647_REG_CHIPID_H, &read);
	if (ret < 0)
		return ret;

	if (read != 0x56) {
		FUNC0(&client->dev, "ID High expected 0x56 got %x", read);
		return -ENODEV;
	}

	ret = FUNC1(sd, OV5647_REG_CHIPID_L, &read);
	if (ret < 0)
		return ret;

	if (read != 0x47) {
		FUNC0(&client->dev, "ID Low expected 0x47 got %x", read);
		return -ENODEV;
	}

	return FUNC2(sd, OV5647_SW_RESET, 0x00);
}