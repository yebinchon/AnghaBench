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
struct usbtv {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/ * udev; } ;
struct usb_interface {int dummy; } ;

/* Variables and functions */
 struct usbtv* FUNC0 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct usbtv*) ; 
 int /*<<< orphan*/  FUNC4 (struct usbtv*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct usb_interface *intf)
{
	struct usbtv *usbtv = FUNC0(intf);

	FUNC2(intf, NULL);

	if (!usbtv)
		return;

	FUNC3(usbtv);
	FUNC4(usbtv);

	FUNC1(usbtv->udev);
	usbtv->udev = NULL;

	/* the usbtv structure will be deallocated when v4l2 will be
	   done using it */
	FUNC5(&usbtv->v4l2_dev);
}