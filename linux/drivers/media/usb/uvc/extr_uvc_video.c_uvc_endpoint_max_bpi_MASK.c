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
typedef  unsigned int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  wBytesPerInterval; } ;
struct usb_host_endpoint {int /*<<< orphan*/  desc; TYPE_1__ ss_ep_comp; } ;
struct usb_device {int speed; } ;

/* Variables and functions */
#define  USB_SPEED_HIGH 131 
#define  USB_SPEED_SUPER 130 
#define  USB_SPEED_SUPER_PLUS 129 
#define  USB_SPEED_WIRELESS 128 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int FUNC3(struct usb_device *dev,
					 struct usb_host_endpoint *ep)
{
	u16 psize;
	u16 mult;

	switch (dev->speed) {
	case USB_SPEED_SUPER:
	case USB_SPEED_SUPER_PLUS:
		return FUNC0(ep->ss_ep_comp.wBytesPerInterval);
	case USB_SPEED_HIGH:
		psize = FUNC1(&ep->desc);
		mult = FUNC2(&ep->desc);
		return psize * mult;
	case USB_SPEED_WIRELESS:
		psize = FUNC1(&ep->desc);
		return psize;
	default:
		psize = FUNC1(&ep->desc);
		return psize;
	}
}