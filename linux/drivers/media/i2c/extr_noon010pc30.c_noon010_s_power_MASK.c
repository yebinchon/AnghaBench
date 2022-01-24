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
struct noon010_info {int /*<<< orphan*/  hdl; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*,int,int) ; 
 int FUNC4 (struct noon010_info*) ; 
 int FUNC5 (struct noon010_info*) ; 
 struct noon010_info* FUNC6 (struct v4l2_subdev*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct v4l2_subdev *sd, int on)
{
	struct noon010_info *info = FUNC6(sd);
	int ret;

	FUNC0(&info->lock);
	if (on) {
		ret = FUNC5(info);
		if (!ret)
			ret = FUNC2(sd);
	} else {
		FUNC3(sd, false, true);
		ret = FUNC4(info);
	}
	FUNC1(&info->lock);

	/* Restore the controls state */
	if (!ret && on)
		ret = FUNC7(&info->hdl);

	return ret;
}