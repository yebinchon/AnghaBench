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
struct TYPE_2__ {int /*<<< orphan*/  entity; } ;
struct ov7670_info {TYPE_1__ sd; int /*<<< orphan*/  hdl; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct v4l2_subdev* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*) ; 
 struct ov7670_info* FUNC3 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client)
{
	struct v4l2_subdev *sd = FUNC0(client);
	struct ov7670_info *info = FUNC3(sd);

	FUNC4(sd);
	FUNC5(&info->hdl);
	FUNC1(&info->sd.entity);
	FUNC2(sd);
	return 0;
}