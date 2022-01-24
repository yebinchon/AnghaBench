#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int num_altsetting; TYPE_4__* altsetting; } ;
struct usb_endpoint_descriptor {int bEndpointAddress; int /*<<< orphan*/  wMaxPacketSize; } ;
struct TYPE_6__ {int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct usb_device {int speed; char* manufacturer; char* product; int /*<<< orphan*/  dev; TYPE_2__ descriptor; } ;
struct TYPE_7__ {int bInterfaceNumber; int bNumEndpoints; } ;
struct TYPE_8__ {TYPE_3__ desc; TYPE_1__* endpoint; } ;
struct TYPE_5__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 int ENODEV ; 
#define  STK1160_EP_AUDIO 132 
#define  STK1160_EP_VIDEO 131 
#define  USB_SPEED_FULL 130 
#define  USB_SPEED_HIGH 129 
#define  USB_SPEED_LOW 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct usb_endpoint_descriptor const*) ; 
 scalar_t__ FUNC6 (struct usb_endpoint_descriptor const*) ; 

__attribute__((used)) static int FUNC7(struct usb_interface *intf, struct usb_device *udev,
		unsigned int *max_pkt_size)
{
	int i, e, sizedescr, size, ifnum;
	const struct usb_endpoint_descriptor *desc;

	bool has_video = false, has_audio = false;
	const char *speed;

	ifnum = intf->altsetting[0].desc.bInterfaceNumber;

	/* Get endpoints */
	for (i = 0; i < intf->num_altsetting; i++) {

		for (e = 0; e < intf->altsetting[i].desc.bNumEndpoints; e++) {

			/* This isn't clear enough, at least to me */
			desc = &intf->altsetting[i].endpoint[e].desc;
			sizedescr = FUNC4(desc->wMaxPacketSize);
			size = sizedescr & 0x7ff;

			if (udev->speed == USB_SPEED_HIGH)
				size = size * FUNC3(sizedescr);

			if (FUNC6(desc) &&
			    FUNC5(desc)) {
				switch (desc->bEndpointAddress) {
				case STK1160_EP_AUDIO:
					has_audio = true;
					break;
				case STK1160_EP_VIDEO:
					has_video = true;
					max_pkt_size[i] = size;
					break;
				}
			}
		}
	}

	/* Is this even possible? */
	if (!(has_audio || has_video)) {
		FUNC0(&udev->dev, "no audio or video endpoints found\n");
		return -ENODEV;
	}

	switch (udev->speed) {
	case USB_SPEED_LOW:
		speed = "1.5";
		break;
	case USB_SPEED_FULL:
		speed = "12";
		break;
	case USB_SPEED_HIGH:
		speed = "480";
		break;
	default:
		speed = "unknown";
	}

	FUNC1(&udev->dev, "New device %s %s @ %s Mbps (%04x:%04x, interface %d, class %d)\n",
		udev->manufacturer ? udev->manufacturer : "",
		udev->product ? udev->product : "",
		speed,
		FUNC4(udev->descriptor.idVendor),
		FUNC4(udev->descriptor.idProduct),
		ifnum,
		intf->altsetting->desc.bInterfaceNumber);

	/* This should never happen, since we rejected audio interfaces */
	if (has_audio)
		FUNC2(&udev->dev, "audio interface %d found.\n\
				This is not implemented by this driver,\
				you should use snd-usb-audio instead\n", ifnum);

	if (has_video)
		FUNC1(&udev->dev, "video interface %d found\n",
				ifnum);

	/*
	 * Make sure we have 480 Mbps of bandwidth, otherwise things like
	 * video stream wouldn't likely work, since 12 Mbps is generally
	 * not enough even for most streams.
	 */
	if (udev->speed != USB_SPEED_HIGH)
		FUNC2(&udev->dev, "must be connected to a high-speed USB 2.0 port\n\
				You may not be able to stream video smoothly\n");

	return 0;
}