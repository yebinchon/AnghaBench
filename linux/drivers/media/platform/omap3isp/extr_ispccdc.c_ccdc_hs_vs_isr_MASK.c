#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct video_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  frame_sequence; } ;
struct TYPE_5__ {TYPE_1__ frame_sync; } ;
struct v4l2_event {TYPE_2__ u; int /*<<< orphan*/  type; } ;
struct isp_pipeline {int /*<<< orphan*/  frame_number; } ;
struct TYPE_6__ {struct video_device* devnode; int /*<<< orphan*/  entity; } ;
struct isp_ccdc_device {TYPE_3__ subdev; } ;
typedef  int /*<<< orphan*/  event ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_EVENT_FRAME_SYNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_event*,int /*<<< orphan*/ ,int) ; 
 struct isp_pipeline* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct video_device*,struct v4l2_event*) ; 

__attribute__((used)) static void FUNC5(struct isp_ccdc_device *ccdc)
{
	struct isp_pipeline *pipe = FUNC3(&ccdc->subdev.entity);
	struct video_device *vdev = ccdc->subdev.devnode;
	struct v4l2_event event;

	/* Frame number propagation */
	FUNC0(&pipe->frame_number);

	FUNC2(&event, 0, sizeof(event));
	event.type = V4L2_EVENT_FRAME_SYNC;
	event.u.frame_sync.frame_sequence = FUNC1(&pipe->frame_number);

	FUNC4(vdev, &event);
}