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
struct v4l2_ext_controls {scalar_t__ which; unsigned int count; unsigned int error_idx; struct v4l2_ext_control* controls; } ;
struct v4l2_ext_control {int dummy; } ;
struct uvc_video_chain {int dummy; } ;
struct uvc_fh {struct uvc_video_chain* chain; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ V4L2_CTRL_WHICH_DEF_VAL ; 
 int FUNC0 (struct uvc_video_chain*) ; 
 int FUNC1 (struct uvc_fh*,struct v4l2_ext_control*,unsigned int) ; 
 int FUNC2 (struct uvc_fh*) ; 
 int FUNC3 (struct uvc_fh*,struct v4l2_ext_control*) ; 

__attribute__((used)) static int FUNC4(struct uvc_fh *handle,
				     struct v4l2_ext_controls *ctrls,
				     bool commit)
{
	struct v4l2_ext_control *ctrl = ctrls->controls;
	struct uvc_video_chain *chain = handle->chain;
	unsigned int i;
	int ret;

	/* Default value cannot be changed */
	if (ctrls->which == V4L2_CTRL_WHICH_DEF_VAL)
		return -EINVAL;

	ret = FUNC0(chain);
	if (ret < 0)
		return ret;

	for (i = 0; i < ctrls->count; ++ctrl, ++i) {
		ret = FUNC3(handle, ctrl);
		if (ret < 0) {
			FUNC2(handle);
			ctrls->error_idx = commit ? ctrls->count : i;
			return ret;
		}
	}

	ctrls->error_idx = 0;

	if (commit)
		return FUNC1(handle, ctrls->controls, ctrls->count);
	else
		return FUNC2(handle);
}