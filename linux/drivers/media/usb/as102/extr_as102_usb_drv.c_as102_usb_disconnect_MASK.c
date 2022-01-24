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
struct as102_dev_t {int /*<<< orphan*/  kref; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int /*<<< orphan*/  FUNC0 (struct as102_dev_t*) ; 
 int /*<<< orphan*/  FUNC1 (struct as102_dev_t*) ; 
 int /*<<< orphan*/  as102_usb_class_driver ; 
 int /*<<< orphan*/  as102_usb_release ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 struct as102_dev_t* FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct usb_interface *intf)
{
	struct as102_dev_t *as102_dev;

	/* extract as102_dev_t from usb_device private data */
	as102_dev = FUNC5(intf);

	/* unregister dvb layer */
	FUNC0(as102_dev);

	/* free usb buffers */
	FUNC1(as102_dev);

	FUNC6(intf, NULL);

	/* usb unregister device */
	FUNC4(intf, &as102_usb_class_driver);

	/* decrement usage counter */
	FUNC2(&as102_dev->kref, as102_usb_release);

	FUNC3("%s: device has been disconnected\n", DRIVER_NAME);
}