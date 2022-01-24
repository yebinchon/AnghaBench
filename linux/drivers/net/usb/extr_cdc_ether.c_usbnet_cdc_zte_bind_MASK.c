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
struct usbnet {TYPE_1__* net; } ;
struct usb_interface {int dummy; } ;
struct TYPE_2__ {int* dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (struct usbnet*,struct usb_interface*) ; 

__attribute__((used)) static int FUNC2(struct usbnet *dev, struct usb_interface *intf)
{
	int status = FUNC1(dev, intf);

	if (!status && (dev->net->dev_addr[0] & 0x02))
		FUNC0(dev->net);

	return status;
}