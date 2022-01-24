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
 int FUNC0 (struct usbnet*) ; 
 int FUNC1 (struct usb_interface*) ; 
 struct usbnet* FUNC2 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC3(struct usb_interface *intf)
{
	struct usbnet *dev = FUNC2(intf);
	int ret;

	ret = FUNC0(dev);
	if (ret < 0)
		return ret;

	return FUNC1(intf);
}