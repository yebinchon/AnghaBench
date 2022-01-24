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
struct video_device {int /*<<< orphan*/ * v4l2_dev; } ;
struct ivtv {TYPE_1__* streams; } ;
struct TYPE_2__ {struct video_device vdev; } ;

/* Variables and functions */
 int IVTV_MAX_STREAMS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct video_device*) ; 

void FUNC2(struct ivtv *itv)
{
	int type;

	/* Teardown all streams */
	for (type = 0; type < IVTV_MAX_STREAMS; type++) {
		struct video_device *vdev = &itv->streams[type].vdev;

		if (vdev->v4l2_dev == NULL)
			continue;

		FUNC1(vdev);
		FUNC0(&itv->streams[type]);
		itv->streams[type].vdev.v4l2_dev = NULL;
	}
}