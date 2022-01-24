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
struct v4l2_subdev {scalar_t__ ops; } ;
struct i2c_client {int dummy; } ;
struct fc2580_dev {struct v4l2_subdev subdev; } ;

/* Variables and functions */
 struct fc2580_dev* FUNC0 (struct i2c_client*) ; 

__attribute__((used)) static struct v4l2_subdev *FUNC1(struct i2c_client *client)
{
	struct fc2580_dev *dev = FUNC0(client);

	if (dev->subdev.ops)
		return &dev->subdev;
	else
		return NULL;
}