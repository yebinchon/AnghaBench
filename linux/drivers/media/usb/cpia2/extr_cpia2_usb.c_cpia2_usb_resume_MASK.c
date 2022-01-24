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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  stream_mode; } ;
struct TYPE_3__ {TYPE_2__ camera_state; } ;
struct camera_data {int /*<<< orphan*/  v4l2_lock; TYPE_1__ params; scalar_t__ streaming; int /*<<< orphan*/  hdl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct camera_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct camera_data* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct usb_interface *intf)
{
	struct camera_data *cam = FUNC4(intf);

	FUNC2(&cam->v4l2_lock);
	FUNC5(&cam->hdl);
	if (cam->streaming) {
		cam->streaming = 0;
		FUNC0(cam,
				cam->params.camera_state.stream_mode);
	}
	FUNC3(&cam->v4l2_lock);

	FUNC1(&intf->dev, "coming out of suspend..\n");
	return 0;
}