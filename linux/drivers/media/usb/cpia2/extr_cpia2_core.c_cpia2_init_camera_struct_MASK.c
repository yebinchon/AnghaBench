#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  release; } ;
struct camera_data {int /*<<< orphan*/  wq_stream; int /*<<< orphan*/  v4l2_lock; TYPE_1__ v4l2_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  cpia2_camera_release ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct camera_data*) ; 
 struct camera_data* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 

struct camera_data *FUNC7(struct usb_interface *intf)
{
	struct camera_data *cam;

	cam = FUNC3(sizeof(*cam), GFP_KERNEL);

	if (!cam) {
		FUNC0("couldn't kmalloc cpia2 struct\n");
		return NULL;
	}

	cam->v4l2_dev.release = cpia2_camera_release;
	if (FUNC5(&intf->dev, &cam->v4l2_dev) < 0) {
		FUNC6(&cam->v4l2_dev, "couldn't register v4l2_device\n");
		FUNC2(cam);
		return NULL;
	}

	FUNC4(&cam->v4l2_lock);
	FUNC1(&cam->wq_stream);

	return cam;
}