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
struct usbnet {int /*<<< orphan*/  net; } ;
struct usb_cdc_notification {scalar_t__ bNotificationType; scalar_t__ wValue; } ;
struct urb {int actual_length; struct usb_cdc_notification* transfer_buffer; } ;

/* Variables and functions */
 scalar_t__ USB_CDC_NOTIFY_NETWORK_CONNECTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  timer ; 
 int /*<<< orphan*/  FUNC3 (struct usbnet*,struct urb*) ; 
 int /*<<< orphan*/  FUNC4 (struct usbnet*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct usbnet *dev, struct urb *urb)
{
	struct usb_cdc_notification *event;

	if (urb->actual_length < sizeof(*event))
		return;

	event = urb->transfer_buffer;

	if (event->bNotificationType != USB_CDC_NOTIFY_NETWORK_CONNECTION) {
		FUNC3(dev, urb);
		return;
	}

	FUNC2(dev, timer, dev->net, "CDC: carrier %s\n",
		  event->wValue ? "on" : "off");

	if (event->wValue &&
	    FUNC1(dev->net))
		FUNC0(dev->net);

	FUNC4(dev, !!event->wValue, 0);
}