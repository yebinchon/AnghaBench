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
struct usbnet {TYPE_1__* udev; int /*<<< orphan*/  flags; int /*<<< orphan*/  net; } ;
struct usb_cdc_speed_change {int dummy; } ;
struct usb_cdc_notification {int bNotificationType; int /*<<< orphan*/  wValue; } ;
struct urb {int actual_length; struct usb_cdc_notification* transfer_buffer; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_STS_SPLIT ; 
#define  USB_CDC_NOTIFY_NETWORK_CONNECTION 129 
#define  USB_CDC_NOTIFY_SPEED_CHANGE 128 
 int /*<<< orphan*/  FUNC0 (struct usbnet*,struct usb_cdc_speed_change*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC2 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct usbnet*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct usbnet *dev, struct urb *urb)
{
	struct usb_cdc_notification *event;

	if (urb->actual_length < sizeof(*event))
		return;

	/* test for split data in 8-byte chunks */
	if (FUNC4(EVENT_STS_SPLIT, &dev->flags)) {
		FUNC0(dev,
		      (struct usb_cdc_speed_change *)urb->transfer_buffer);
		return;
	}

	event = urb->transfer_buffer;

	switch (event->bNotificationType) {
	case USB_CDC_NOTIFY_NETWORK_CONNECTION:
		/*
		 * According to the CDC NCM specification ch.7.1
		 * USB_CDC_NOTIFY_NETWORK_CONNECTION notification shall be
		 * sent by device after USB_CDC_NOTIFY_SPEED_CHANGE.
		 */
		FUNC2(dev, link, dev->net,
			   "network connection: %sconnected\n",
			   !!event->wValue ? "" : "dis");
		FUNC5(dev, !!event->wValue, 0);
		break;

	case USB_CDC_NOTIFY_SPEED_CHANGE:
		if (urb->actual_length < (sizeof(*event) +
					sizeof(struct usb_cdc_speed_change)))
			FUNC3(EVENT_STS_SPLIT, &dev->flags);
		else
			FUNC0(dev,
					     (struct usb_cdc_speed_change *)&event[1]);
		break;

	default:
		FUNC1(&dev->udev->dev,
			"NCM: unexpected notification 0x%02x!\n",
			event->bNotificationType);
		break;
	}
}