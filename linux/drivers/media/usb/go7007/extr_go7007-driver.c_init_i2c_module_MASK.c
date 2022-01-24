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
struct v4l2_device {int dummy; } ;
struct i2c_board_info {int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; int /*<<< orphan*/  type; } ;
struct i2c_adapter {int dummy; } ;
struct go_i2c {int /*<<< orphan*/  type; scalar_t__ is_audio; scalar_t__ is_video; int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; } ;
struct go7007 {struct v4l2_subdev* sd_audio; struct v4l2_subdev* sd_video; struct v4l2_device v4l2_dev; } ;
typedef  int /*<<< orphan*/  info ;

/* Variables and functions */
 int EINVAL ; 
 struct go7007* FUNC0 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_board_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct v4l2_subdev* FUNC4 (struct v4l2_device*,struct i2c_adapter*,struct i2c_board_info*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct i2c_adapter *adapter, const struct go_i2c *const i2c)
{
	struct go7007 *go = FUNC0(adapter);
	struct v4l2_device *v4l2_dev = &go->v4l2_dev;
	struct v4l2_subdev *sd;
	struct i2c_board_info info;

	FUNC1(&info, 0, sizeof(info));
	FUNC3(info.type, i2c->type, sizeof(info.type));
	info.addr = i2c->addr;
	info.flags = i2c->flags;

	sd = FUNC4(v4l2_dev, adapter, &info, NULL);
	if (sd) {
		if (i2c->is_video)
			go->sd_video = sd;
		if (i2c->is_audio)
			go->sd_audio = sd;
		return 0;
	}

	FUNC2("go7007: probing for module i2c:%s failed\n", i2c->type);
	return -EINVAL;
}