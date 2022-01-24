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
struct vfe_device {TYPE_1__* line; int /*<<< orphan*/  stream_lock; int /*<<< orphan*/  power_lock; } ;
struct v4l2_subdev {int /*<<< orphan*/  entity; } ;
struct camss_video {int dummy; } ;
struct TYPE_2__ {struct camss_video video_out; struct v4l2_subdev subdev; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct camss_video*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_subdev*) ; 

void FUNC5(struct vfe_device *vfe)
{
	int i;

	FUNC3(&vfe->power_lock);
	FUNC3(&vfe->stream_lock);

	for (i = 0; i < FUNC0(vfe->line); i++) {
		struct v4l2_subdev *sd = &vfe->line[i].subdev;
		struct camss_video *video_out = &vfe->line[i].video_out;

		FUNC2(video_out);
		FUNC4(sd);
		FUNC1(&sd->entity);
	}
}