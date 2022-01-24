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
struct usbnet {struct asix_common_private* driver_priv; } ;
struct usb_interface {int dummy; } ;
struct asix_common_private {int /*<<< orphan*/  (* resume ) (struct usbnet*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usbnet*) ; 
 struct usbnet* FUNC1 (struct usb_interface*) ; 
 int FUNC2 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC3(struct usb_interface *intf)
{
	struct usbnet *dev = FUNC1(intf);
	struct asix_common_private *priv = dev->driver_priv;

	if (priv && priv->resume)
		priv->resume(dev);

	return FUNC2(intf);
}