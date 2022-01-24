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
struct v4l2_subdev {int /*<<< orphan*/  dev; } ;
struct tvp5150 {int /*<<< orphan*/  hdl; } ;
struct i2c_client {int addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,int) ; 
 struct v4l2_subdev* FUNC1 (struct i2c_client*) ; 
 struct tvp5150* FUNC2 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *c)
{
	struct v4l2_subdev *sd = FUNC1(c);
	struct tvp5150 *decoder = FUNC2(sd);

	FUNC0(sd->dev, 1, debug,
		"tvp5150.c: removing tvp5150 adapter on address 0x%x\n",
		c->addr << 1);

	FUNC3(sd);
	FUNC4(&decoder->hdl);
	return 0;
}