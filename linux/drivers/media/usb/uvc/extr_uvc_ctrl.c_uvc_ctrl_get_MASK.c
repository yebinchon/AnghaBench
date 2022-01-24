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
struct v4l2_ext_control {int /*<<< orphan*/  value; int /*<<< orphan*/  id; } ;
struct uvc_video_chain {int dummy; } ;
struct uvc_control_mapping {int dummy; } ;
struct uvc_control {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct uvc_video_chain*,struct uvc_control*,struct uvc_control_mapping*,int /*<<< orphan*/ *) ; 
 struct uvc_control* FUNC1 (struct uvc_video_chain*,int /*<<< orphan*/ ,struct uvc_control_mapping**) ; 

int FUNC2(struct uvc_video_chain *chain,
	struct v4l2_ext_control *xctrl)
{
	struct uvc_control *ctrl;
	struct uvc_control_mapping *mapping;

	ctrl = FUNC1(chain, xctrl->id, &mapping);
	if (ctrl == NULL)
		return -EINVAL;

	return FUNC0(chain, ctrl, mapping, &xctrl->value);
}