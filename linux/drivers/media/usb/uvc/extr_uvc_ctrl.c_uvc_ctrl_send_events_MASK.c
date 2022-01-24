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
typedef  scalar_t__ u32 ;
struct v4l2_ext_control {int /*<<< orphan*/  value; int /*<<< orphan*/  id; } ;
struct uvc_fh {int /*<<< orphan*/  chain; } ;
struct uvc_control_mapping {scalar_t__ master_id; scalar_t__* slave_ids; } ;
struct TYPE_2__ {int flags; } ;
struct uvc_control {TYPE_1__ info; } ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__*) ; 
 int UVC_CTRL_FLAG_ASYNCHRONOUS ; 
 scalar_t__ V4L2_EVENT_CTRL_CH_FLAGS ; 
 scalar_t__ V4L2_EVENT_CTRL_CH_VALUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct uvc_fh*,struct uvc_control*,struct uvc_control_mapping*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct uvc_fh*,struct uvc_control*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct v4l2_ext_control const*,unsigned int,scalar_t__) ; 
 struct uvc_control* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uvc_control_mapping**) ; 

__attribute__((used)) static void FUNC5(struct uvc_fh *handle,
	const struct v4l2_ext_control *xctrls, unsigned int xctrls_count)
{
	struct uvc_control_mapping *mapping;
	struct uvc_control *ctrl;
	u32 changes = V4L2_EVENT_CTRL_CH_VALUE;
	unsigned int i;
	unsigned int j;

	for (i = 0; i < xctrls_count; ++i) {
		ctrl = FUNC4(handle->chain, xctrls[i].id, &mapping);

		if (ctrl->info.flags & UVC_CTRL_FLAG_ASYNCHRONOUS)
			/* Notification will be sent from an Interrupt event. */
			continue;

		for (j = 0; j < FUNC0(mapping->slave_ids); ++j) {
			u32 slave_id = mapping->slave_ids[j];

			if (!slave_id)
				break;

			/*
			 * We can skip sending an event for the slave if the
			 * slave is being modified in the same transaction.
			 */
			if (FUNC3(xctrls, xctrls_count,
							slave_id))
				continue;

			FUNC2(handle->chain, handle, ctrl,
						  slave_id);
		}

		/*
		 * If the master is being modified in the same transaction
		 * flags may change too.
		 */
		if (mapping->master_id &&
		    FUNC3(xctrls, xctrls_count,
						mapping->master_id))
			changes |= V4L2_EVENT_CTRL_CH_FLAGS;

		FUNC1(handle->chain, handle, ctrl, mapping,
				    xctrls[i].value, changes);
	}
}