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
struct ivtv {TYPE_2__* streams; } ;
struct TYPE_3__ {int /*<<< orphan*/ * v4l2_dev; } ;
struct TYPE_4__ {TYPE_1__ vdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int IVTV_MAX_STREAMS ; 
 scalar_t__ FUNC0 (struct ivtv*,int) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct ivtv*) ; 

int FUNC3(struct ivtv *itv)
{
	int type;

	/* Setup V4L2 Devices */
	for (type = 0; type < IVTV_MAX_STREAMS; type++) {
		/* Prepare device */
		if (FUNC0(itv, type))
			break;

		if (itv->streams[type].vdev.v4l2_dev == NULL)
			continue;

		/* Allocate Stream */
		if (FUNC1(&itv->streams[type]))
			break;
	}
	if (type == IVTV_MAX_STREAMS)
		return 0;

	/* One or more streams could not be initialized. Clean 'em all up. */
	FUNC2(itv);
	return -ENOMEM;
}