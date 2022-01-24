#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int num_altsetting; struct usb_host_interface* altsetting; } ;
struct TYPE_3__ {unsigned int bNumEndpoints; } ;
struct usb_host_interface {struct usb_host_endpoint* endpoint; TYPE_1__ desc; } ;
struct TYPE_4__ {int bmAttributes; int bEndpointAddress; } ;
struct usb_host_endpoint {TYPE_2__ desc; } ;
struct lan78xx_net {struct usb_host_endpoint* ep_intr; int /*<<< orphan*/  udev; int /*<<< orphan*/  pipe_out; int /*<<< orphan*/  pipe_in; } ;

/* Variables and functions */
 int EINVAL ; 
 int USB_ENDPOINT_NUMBER_MASK ; 
#define  USB_ENDPOINT_XFER_BULK 129 
#define  USB_ENDPOINT_XFER_INT 128 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(struct lan78xx_net *dev, struct usb_interface *intf)
{
	int tmp;
	struct usb_host_interface *alt = NULL;
	struct usb_host_endpoint *in = NULL, *out = NULL;
	struct usb_host_endpoint *status = NULL;

	for (tmp = 0; tmp < intf->num_altsetting; tmp++) {
		unsigned ep;

		in = NULL;
		out = NULL;
		status = NULL;
		alt = intf->altsetting + tmp;

		for (ep = 0; ep < alt->desc.bNumEndpoints; ep++) {
			struct usb_host_endpoint *e;
			int intr = 0;

			e = alt->endpoint + ep;
			switch (e->desc.bmAttributes) {
			case USB_ENDPOINT_XFER_INT:
				if (!FUNC0(&e->desc))
					continue;
				intr = 1;
				/* FALLTHROUGH */
			case USB_ENDPOINT_XFER_BULK:
				break;
			default:
				continue;
			}
			if (FUNC0(&e->desc)) {
				if (!intr && !in)
					in = e;
				else if (intr && !status)
					status = e;
			} else {
				if (!out)
					out = e;
			}
		}
		if (in && out)
			break;
	}
	if (!alt || !in || !out)
		return -EINVAL;

	dev->pipe_in = FUNC1(dev->udev,
				       in->desc.bEndpointAddress &
				       USB_ENDPOINT_NUMBER_MASK);
	dev->pipe_out = FUNC2(dev->udev,
					out->desc.bEndpointAddress &
					USB_ENDPOINT_NUMBER_MASK);
	dev->ep_intr = status;

	return 0;
}