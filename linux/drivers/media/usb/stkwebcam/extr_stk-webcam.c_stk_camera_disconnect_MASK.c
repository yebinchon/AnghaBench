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
struct usb_interface {int dummy; } ;
struct stk_camera {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  hdl; int /*<<< orphan*/  vdev; int /*<<< orphan*/  wait_frame; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stk_camera*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct stk_camera*) ; 
 struct stk_camera* FUNC3 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct usb_interface *interface)
{
	struct stk_camera *dev = FUNC3(interface);

	FUNC4(interface, NULL);
	FUNC2(dev);

	FUNC9(&dev->wait_frame);

	FUNC1("Syntek USB2.0 Camera release resources device %s\n",
		FUNC7(&dev->vdev));

	FUNC8(&dev->vdev);
	FUNC5(&dev->hdl);
	FUNC6(&dev->v4l2_dev);
	FUNC0(dev);
}