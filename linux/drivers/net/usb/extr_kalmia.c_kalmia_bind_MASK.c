#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct usbnet {int hard_mtu; int rx_urb_size; TYPE_2__* net; int /*<<< orphan*/ * status; int /*<<< orphan*/  udev; int /*<<< orphan*/  out; int /*<<< orphan*/  in; } ;
struct usb_interface {TYPE_1__* cur_altsetting; } ;
struct TYPE_6__ {scalar_t__ bInterfaceClass; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  hard_header_len; } ;
struct TYPE_4__ {TYPE_3__ desc; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETH_ALEN ; 
 scalar_t__ KALMIA_HEADER_LENGTH ; 
 scalar_t__ USB_CLASS_VENDOR_SPEC ; 
 int USB_ENDPOINT_NUMBER_MASK ; 
 int FUNC0 (struct usbnet*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct usbnet *dev, struct usb_interface *intf)
{
	int status;
	u8 ethernet_addr[ETH_ALEN];

	/* Don't bind to AT command interface */
	if (intf->cur_altsetting->desc.bInterfaceClass != USB_CLASS_VENDOR_SPEC)
		return -EINVAL;

	dev->in = FUNC2(dev->udev, 0x81 & USB_ENDPOINT_NUMBER_MASK);
	dev->out = FUNC3(dev->udev, 0x02 & USB_ENDPOINT_NUMBER_MASK);
	dev->status = NULL;

	dev->net->hard_header_len += KALMIA_HEADER_LENGTH;
	dev->hard_mtu = 1400;
	dev->rx_urb_size = dev->hard_mtu * 10; // Found as optimal after testing

	status = FUNC0(dev, ethernet_addr);
	if (status)
		return status;

	FUNC1(dev->net->dev_addr, ethernet_addr, ETH_ALEN);

	return status;
}