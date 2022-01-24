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
struct uvc_device {int dummy; } ;
struct uvc_control_mapping {scalar_t__ selector; int /*<<< orphan*/  entity; } ;
struct uvc_control_info {scalar_t__ index; int /*<<< orphan*/  entity; } ;
struct TYPE_2__ {scalar_t__ selector; } ;
struct uvc_control {scalar_t__ index; TYPE_1__ info; int /*<<< orphan*/  entity; int /*<<< orphan*/  initialized; } ;

/* Variables and functions */
 int FUNC0 (void*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ UVC_VC_EXTENSION_UNIT ; 
 int /*<<< orphan*/  FUNC2 (struct uvc_device*,struct uvc_control*,struct uvc_control_mapping const*) ; 
 int /*<<< orphan*/  FUNC3 (struct uvc_device*,struct uvc_control*,struct uvc_control_info const*) ; 
 void* uvc_ctrl_mappings ; 
 void* uvc_ctrls ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct uvc_device *dev, struct uvc_control *ctrl)
{
	const struct uvc_control_info *info = uvc_ctrls;
	const struct uvc_control_info *iend = info + FUNC0(uvc_ctrls);
	const struct uvc_control_mapping *mapping = uvc_ctrl_mappings;
	const struct uvc_control_mapping *mend =
		mapping + FUNC0(uvc_ctrl_mappings);

	/* XU controls initialization requires querying the device for control
	 * information. As some buggy UVC devices will crash when queried
	 * repeatedly in a tight loop, delay XU controls initialization until
	 * first use.
	 */
	if (FUNC1(ctrl->entity) == UVC_VC_EXTENSION_UNIT)
		return;

	for (; info < iend; ++info) {
		if (FUNC4(ctrl->entity, info->entity) &&
		    ctrl->index == info->index) {
			FUNC3(dev, ctrl, info);
			break;
		 }
	}

	if (!ctrl->initialized)
		return;

	for (; mapping < mend; ++mapping) {
		if (FUNC4(ctrl->entity, mapping->entity) &&
		    ctrl->info.selector == mapping->selector)
			FUNC2(dev, ctrl, mapping);
	}
}