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
struct v4l2_queryctrl {int /*<<< orphan*/  id; } ;
struct uvc_video_chain {int /*<<< orphan*/  ctrl_mutex; } ;
struct uvc_control_mapping {int dummy; } ;
struct uvc_control {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ERESTARTSYS ; 
 int FUNC0 (struct uvc_video_chain*,struct uvc_control*,struct uvc_control_mapping*,struct v4l2_queryctrl*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct uvc_control* FUNC3 (struct uvc_video_chain*,int /*<<< orphan*/ ,struct uvc_control_mapping**) ; 

int FUNC4(struct uvc_video_chain *chain,
	struct v4l2_queryctrl *v4l2_ctrl)
{
	struct uvc_control *ctrl;
	struct uvc_control_mapping *mapping;
	int ret;

	ret = FUNC1(&chain->ctrl_mutex);
	if (ret < 0)
		return -ERESTARTSYS;

	ctrl = FUNC3(chain, v4l2_ctrl->id, &mapping);
	if (ctrl == NULL) {
		ret = -EINVAL;
		goto done;
	}

	ret = FUNC0(chain, ctrl, mapping, v4l2_ctrl);
done:
	FUNC2(&chain->ctrl_mutex);
	return ret;
}