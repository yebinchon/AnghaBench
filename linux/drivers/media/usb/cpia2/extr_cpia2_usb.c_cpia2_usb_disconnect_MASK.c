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
struct usb_interface {int dummy; } ;
struct camera_data {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  wq_stream; TYPE_1__* curbuff; scalar_t__ buffers; int /*<<< orphan*/  v4l2_lock; } ;
struct TYPE_2__ {scalar_t__ length; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FRAME_READY ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct camera_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct camera_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct camera_data* FUNC6 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct usb_interface *intf)
{
	struct camera_data *cam = FUNC6(intf);
	FUNC7(intf, NULL);

	FUNC0("Stopping stream\n");
	FUNC3(cam);

	FUNC4(&cam->v4l2_lock);
	FUNC0("Unregistering camera\n");
	FUNC2(cam);
	FUNC8(&cam->v4l2_dev);
	FUNC5(&cam->v4l2_lock);

	if(cam->buffers) {
		FUNC0("Wakeup waiting processes\n");
		cam->curbuff->status = FRAME_READY;
		cam->curbuff->length = 0;
		FUNC10(&cam->wq_stream);
	}

	FUNC9(&cam->v4l2_dev);

	FUNC1("CPiA2 camera disconnected.\n");
}