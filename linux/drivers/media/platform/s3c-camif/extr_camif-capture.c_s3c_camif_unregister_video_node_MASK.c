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
struct video_device {int /*<<< orphan*/  ctrl_handler; int /*<<< orphan*/  entity; } ;
struct camif_dev {TYPE_1__* vp; } ;
struct TYPE_2__ {struct video_device vdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct video_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct video_device*) ; 

void FUNC4(struct camif_dev *camif, int idx)
{
	struct video_device *vfd = &camif->vp[idx].vdev;

	if (FUNC2(vfd)) {
		FUNC3(vfd);
		FUNC0(&vfd->entity);
		FUNC1(vfd->ctrl_handler);
	}
}