#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vivid_dev {unsigned int num_inputs; unsigned int* input_type; int /*<<< orphan*/  vbi_cap_dev; scalar_t__ has_vbi_cap; int /*<<< orphan*/  vid_cap_dev; scalar_t__ has_vid_cap; } ;
struct TYPE_3__ {int /*<<< orphan*/  changes; } ;
struct TYPE_4__ {TYPE_1__ src_change; } ;
struct v4l2_event {unsigned int id; TYPE_2__ u; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_EVENT_SOURCE_CHANGE ; 
 int /*<<< orphan*/  V4L2_EVENT_SRC_CH_RESOLUTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct v4l2_event*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct vivid_dev *dev, unsigned type)
{
	struct v4l2_event ev = {
		.type = V4L2_EVENT_SOURCE_CHANGE,
		.u.src_change.changes = V4L2_EVENT_SRC_CH_RESOLUTION,
	};
	unsigned i;

	for (i = 0; i < dev->num_inputs; i++) {
		ev.id = i;
		if (dev->input_type[i] == type) {
			if (FUNC1(&dev->vid_cap_dev) && dev->has_vid_cap)
				FUNC0(&dev->vid_cap_dev, &ev);
			if (FUNC1(&dev->vbi_cap_dev) && dev->has_vbi_cap)
				FUNC0(&dev->vbi_cap_dev, &ev);
		}
	}
}