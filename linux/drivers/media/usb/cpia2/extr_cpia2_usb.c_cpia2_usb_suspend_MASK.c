#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct camera_data {int streaming; int /*<<< orphan*/  v4l2_lock; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct camera_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct camera_data* FUNC4 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC5(struct usb_interface *intf, pm_message_t message)
{
	struct camera_data *cam = FUNC4(intf);

	FUNC2(&cam->v4l2_lock);
	if (cam->streaming) {
		FUNC0(cam);
		cam->streaming = 1;
	}
	FUNC3(&cam->v4l2_lock);

	FUNC1(&intf->dev, "going into suspend..\n");
	return 0;
}