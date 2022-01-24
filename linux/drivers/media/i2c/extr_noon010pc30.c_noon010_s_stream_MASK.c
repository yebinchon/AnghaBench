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
struct noon010_info {int streaming; int /*<<< orphan*/  lock; scalar_t__ apply_new_cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct v4l2_subdev*,int,int) ; 
 int FUNC3 (struct v4l2_subdev*) ; 
 struct noon010_info* FUNC4 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd, int on)
{
	struct noon010_info *info = FUNC4(sd);
	int ret = 0;

	FUNC0(&info->lock);
	if (!info->streaming != !on) {
		ret = FUNC2(sd, false, !on);
		if (!ret)
			info->streaming = on;
	}
	if (!ret && on && info->apply_new_cfg) {
		ret = FUNC3(sd);
		if (!ret)
			info->apply_new_cfg = 0;
	}
	FUNC1(&info->lock);
	return ret;
}