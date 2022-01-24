#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct usbnet {struct usb_host_endpoint* status; int /*<<< orphan*/  udev; int /*<<< orphan*/  out; int /*<<< orphan*/  in; TYPE_1__* driver_info; } ;
struct usb_interface {int num_altsetting; struct usb_host_interface* altsetting; } ;
struct TYPE_6__ {unsigned int bNumEndpoints; scalar_t__ bAlternateSetting; int /*<<< orphan*/  bInterfaceNumber; } ;
struct usb_host_interface {TYPE_2__ desc; struct usb_host_endpoint* endpoint; } ;
struct TYPE_7__ {int bmAttributes; int bEndpointAddress; } ;
struct usb_host_endpoint {TYPE_3__ desc; } ;
struct TYPE_5__ {int flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int FLAG_NO_SETINT ; 
 int USB_ENDPOINT_NUMBER_MASK ; 
#define  USB_ENDPOINT_XFER_BULK 129 
#define  USB_ENDPOINT_XFER_INT 128 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

int FUNC5(struct usbnet *dev, struct usb_interface *intf)
{
	int				tmp;
	struct usb_host_interface	*alt = NULL;
	struct usb_host_endpoint	*in = NULL, *out = NULL;
	struct usb_host_endpoint	*status = NULL;

	for (tmp = 0; tmp < intf->num_altsetting; tmp++) {
		unsigned	ep;

		in = out = status = NULL;
		alt = intf->altsetting + tmp;

		/* take the first altsetting with in-bulk + out-bulk;
		 * remember any status endpoint, just in case;
		 * ignore other endpoints and altsettings.
		 */
		for (ep = 0; ep < alt->desc.bNumEndpoints; ep++) {
			struct usb_host_endpoint	*e;
			int				intr = 0;

			e = alt->endpoint + ep;

			/* ignore endpoints which cannot transfer data */
			if (!FUNC1(&e->desc))
				continue;

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

	if (alt->desc.bAlternateSetting != 0 ||
	    !(dev->driver_info->flags & FLAG_NO_SETINT)) {
		tmp = FUNC3 (dev->udev, alt->desc.bInterfaceNumber,
				alt->desc.bAlternateSetting);
		if (tmp < 0)
			return tmp;
	}

	dev->in = FUNC2 (dev->udev,
			in->desc.bEndpointAddress & USB_ENDPOINT_NUMBER_MASK);
	dev->out = FUNC4 (dev->udev,
			out->desc.bEndpointAddress & USB_ENDPOINT_NUMBER_MASK);
	dev->status = status;
	return 0;
}