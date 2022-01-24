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
typedef  size_t u8 ;
typedef  size_t u32 ;
struct usb_interface_descriptor {scalar_t__ bInterfaceClass; int bInterfaceSubClass; int bInterfaceProtocol; size_t bNumEndpoints; int /*<<< orphan*/  bInterfaceNumber; } ;
struct usb_interface {TYPE_3__* altsetting; } ;
struct usb_endpoint_descriptor {int dummy; } ;
struct usb_device_id {int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct TYPE_4__ {int bNumConfigurations; scalar_t__ bDeviceClass; } ;
struct usb_device {scalar_t__ speed; TYPE_1__ descriptor; int /*<<< orphan*/  dev; } ;
struct brcmf_usbdev_info {scalar_t__ rx_pipe; scalar_t__ tx_pipe; int /*<<< orphan*/  dev_init_done; int /*<<< orphan*/  ifnum; int /*<<< orphan*/ * dev; struct usb_device* usbdev; } ;
struct TYPE_6__ {TYPE_2__* endpoint; struct usb_interface_descriptor desc; } ;
struct TYPE_5__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  USB ; 
 scalar_t__ USB_CLASS_MISC ; 
 scalar_t__ USB_CLASS_VENDOR_SPEC ; 
 scalar_t__ USB_CLASS_WIRELESS_CONTROLLER ; 
 scalar_t__ USB_SPEED_HIGH ; 
 scalar_t__ USB_SPEED_SUPER ; 
 scalar_t__ USB_SPEED_SUPER_PLUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (struct brcmf_usbdev_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (struct brcmf_usbdev_info*) ; 
 struct brcmf_usbdev_info* FUNC7 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct usb_endpoint_descriptor*) ; 
 size_t FUNC9 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC11 (struct usb_device*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_interface*,struct brcmf_usbdev_info*) ; 
 scalar_t__ FUNC13 (struct usb_device*,size_t) ; 

__attribute__((used)) static int
FUNC14(struct usb_interface *intf, const struct usb_device_id *id)
{
	struct usb_device *usb = FUNC5(intf);
	struct brcmf_usbdev_info *devinfo;
	struct usb_interface_descriptor	*desc;
	struct usb_endpoint_descriptor *endpoint;
	int ret = 0;
	u32 num_of_eps;
	u8 endpoint_num, ep;

	FUNC0(USB, "Enter 0x%04x:0x%04x\n", id->idVendor, id->idProduct);

	devinfo = FUNC7(sizeof(*devinfo), GFP_ATOMIC);
	if (devinfo == NULL)
		return -ENOMEM;

	devinfo->usbdev = usb;
	devinfo->dev = &usb->dev;
	/* Init completion, to protect for disconnect while still loading.
	 * Necessary because of the asynchronous firmware load construction
	 */
	FUNC4(&devinfo->dev_init_done);

	FUNC12(intf, devinfo);

	/* Check that the device supports only one configuration */
	if (usb->descriptor.bNumConfigurations != 1) {
		FUNC1("Number of configurations: %d not supported\n",
			  usb->descriptor.bNumConfigurations);
		ret = -ENODEV;
		goto fail;
	}

	if ((usb->descriptor.bDeviceClass != USB_CLASS_VENDOR_SPEC) &&
	    (usb->descriptor.bDeviceClass != USB_CLASS_MISC) &&
	    (usb->descriptor.bDeviceClass != USB_CLASS_WIRELESS_CONTROLLER)) {
		FUNC1("Device class: 0x%x not supported\n",
			  usb->descriptor.bDeviceClass);
		ret = -ENODEV;
		goto fail;
	}

	desc = &intf->altsetting[0].desc;
	if ((desc->bInterfaceClass != USB_CLASS_VENDOR_SPEC) ||
	    (desc->bInterfaceSubClass != 2) ||
	    (desc->bInterfaceProtocol != 0xff)) {
		FUNC1("non WLAN interface %d: 0x%x:0x%x:0x%x\n",
			  desc->bInterfaceNumber, desc->bInterfaceClass,
			  desc->bInterfaceSubClass, desc->bInterfaceProtocol);
		ret = -ENODEV;
		goto fail;
	}

	num_of_eps = desc->bNumEndpoints;
	for (ep = 0; ep < num_of_eps; ep++) {
		endpoint = &intf->altsetting[0].endpoint[ep].desc;
		endpoint_num = FUNC9(endpoint);
		if (!FUNC10(endpoint))
			continue;
		if (FUNC8(endpoint)) {
			if (!devinfo->rx_pipe)
				devinfo->rx_pipe =
					FUNC11(usb, endpoint_num);
		} else {
			if (!devinfo->tx_pipe)
				devinfo->tx_pipe =
					FUNC13(usb, endpoint_num);
		}
	}
	if (devinfo->rx_pipe == 0) {
		FUNC1("No RX (in) Bulk EP found\n");
		ret = -ENODEV;
		goto fail;
	}
	if (devinfo->tx_pipe == 0) {
		FUNC1("No TX (out) Bulk EP found\n");
		ret = -ENODEV;
		goto fail;
	}

	devinfo->ifnum = desc->bInterfaceNumber;

	if (usb->speed == USB_SPEED_SUPER_PLUS)
		FUNC0(USB, "Broadcom super speed plus USB WLAN interface detected\n");
	else if (usb->speed == USB_SPEED_SUPER)
		FUNC0(USB, "Broadcom super speed USB WLAN interface detected\n");
	else if (usb->speed == USB_SPEED_HIGH)
		FUNC0(USB, "Broadcom high speed USB WLAN interface detected\n");
	else
		FUNC0(USB, "Broadcom full speed USB WLAN interface detected\n");

	ret = FUNC2(devinfo);
	if (ret)
		goto fail;

	/* Success */
	return 0;

fail:
	FUNC3(&devinfo->dev_init_done);
	FUNC6(devinfo);
	FUNC12(intf, NULL);
	return ret;
}