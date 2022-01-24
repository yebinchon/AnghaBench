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
 struct usbnet* FUNC1 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC3 (struct usb_interface *intf)
{
 	/* YES, this function is successful enough that ethtool -d
           does show same output pre-/post-suspend */

	struct usbnet		*dev = FUNC1(intf);

	FUNC0(dev);

	FUNC2(intf);

	return 0;
}