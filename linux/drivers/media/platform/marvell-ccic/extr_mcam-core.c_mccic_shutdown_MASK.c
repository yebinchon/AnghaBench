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
struct TYPE_2__ {int /*<<< orphan*/  fh_list; } ;
struct mcam_camera {scalar_t__ buffer_mode; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  notifier; int /*<<< orphan*/  ctrl_handler; TYPE_1__ vdev; } ;

/* Variables and functions */
 scalar_t__ B_vmalloc ; 
 int /*<<< orphan*/  FUNC0 (struct mcam_camera*,char*) ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mcam_camera*) ; 
 int /*<<< orphan*/  s_power ; 
 int /*<<< orphan*/  FUNC3 (struct mcam_camera*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct mcam_camera *cam)
{
	/*
	 * If we have no users (and we really, really should have no
	 * users) the device will already be powered down.  Trying to
	 * take it down again will wedge the machine, which is frowned
	 * upon.
	 */
	if (!FUNC1(&cam->vdev.fh_list)) {
		FUNC0(cam, "Removing a device with users!\n");
		FUNC3(cam, core, s_power, 0);
	}
	if (cam->buffer_mode == B_vmalloc)
		FUNC2(cam);
	FUNC5(&cam->ctrl_handler);
	FUNC4(&cam->notifier);
	FUNC6(&cam->v4l2_dev);
}