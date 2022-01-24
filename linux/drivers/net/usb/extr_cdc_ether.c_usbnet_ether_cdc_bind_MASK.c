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
struct usbnet {int dummy; } ;
struct usb_interface {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usbnet*) ; 
 int FUNC1 (struct usbnet*,struct usb_interface*) ; 

int FUNC2(struct usbnet *dev, struct usb_interface *intf)
{
	int rv;

	rv = FUNC1(dev, intf);
	if (rv < 0)
		goto bail_out;

	/* Some devices don't initialise properly. In particular
	 * the packet filter is not reset. There are devices that
	 * don't do reset all the way. So the packet filter should
	 * be set to a sane initial value.
	 */
	FUNC0(dev);

bail_out:
	return rv;
}