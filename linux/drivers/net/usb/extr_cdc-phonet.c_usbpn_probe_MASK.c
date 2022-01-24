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
struct usbpn_dev {int active_setting; void* tx_pipe; void* rx_pipe; int /*<<< orphan*/  rx_lock; int /*<<< orphan*/  tx_lock; struct usb_interface* data_intf; struct usb_interface* intf; struct usb_device* usb; struct net_device* dev; } ;
struct usb_interface {int num_altsetting; struct usb_host_interface const* altsetting; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int bNumEndpoints; } ;
typedef  struct usb_host_interface {int extralen; TYPE_3__* endpoint; TYPE_1__ desc; int /*<<< orphan*/ * extra; } const usb_host_interface ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct usb_cdc_union_desc {int /*<<< orphan*/  bSlaveInterface0; } ;
struct usb_cdc_parsed_header {int phonet_magic_present; struct usb_cdc_union_desc* usb_cdc_union_desc; } ;
struct net_device {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  bEndpointAddress; } ;
struct TYPE_6__ {TYPE_2__ desc; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  NET_NAME_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_cdc_parsed_header*,struct usb_interface*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 struct usb_device* FUNC5 (struct usb_interface*) ; 
 struct usbpn_dev* FUNC6 (struct net_device*) ; 
 int FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  rxq_size ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct usbpn_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  urbs ; 
 int FUNC10 (int /*<<< orphan*/ *,struct usb_interface*,struct usbpn_dev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct usb_interface*) ; 
 struct usb_interface* FUNC12 (struct usb_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 void* FUNC14 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_interface*,struct usbpn_dev*) ; 
 void* FUNC17 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usbpn_driver ; 
 int /*<<< orphan*/  usbpn_setup ; 

__attribute__((used)) static int FUNC18(struct usb_interface *intf, const struct usb_device_id *id)
{
	static const char ifname[] = "usbpn%d";
	const struct usb_cdc_union_desc *union_header = NULL;
	const struct usb_host_interface *data_desc;
	struct usb_interface *data_intf;
	struct usb_device *usbdev = FUNC5(intf);
	struct net_device *dev;
	struct usbpn_dev *pnd;
	u8 *data;
	int phonet = 0;
	int len, err;
	struct usb_cdc_parsed_header hdr;

	data = intf->altsetting->extra;
	len = intf->altsetting->extralen;
	FUNC2(&hdr, intf, data, len);
	union_header = hdr.usb_cdc_union_desc;
	phonet = hdr.phonet_magic_present;

	if (!union_header || !phonet)
		return -EINVAL;

	data_intf = FUNC12(usbdev, union_header->bSlaveInterface0);
	if (data_intf == NULL)
		return -ENODEV;
	/* Data interface has one inactive and one active setting */
	if (data_intf->num_altsetting != 2)
		return -EINVAL;
	if (data_intf->altsetting[0].desc.bNumEndpoints == 0 &&
	    data_intf->altsetting[1].desc.bNumEndpoints == 2)
		data_desc = data_intf->altsetting + 1;
	else
	if (data_intf->altsetting[0].desc.bNumEndpoints == 2 &&
	    data_intf->altsetting[1].desc.bNumEndpoints == 0)
		data_desc = data_intf->altsetting;
	else
		return -EINVAL;

	dev = FUNC1(FUNC9(pnd, urbs, rxq_size), ifname,
			   NET_NAME_UNKNOWN, usbpn_setup);
	if (!dev)
		return -ENOMEM;

	pnd = FUNC6(dev);
	FUNC0(dev, &intf->dev);

	pnd->dev = dev;
	pnd->usb = usbdev;
	pnd->intf = intf;
	pnd->data_intf = data_intf;
	FUNC8(&pnd->tx_lock);
	FUNC8(&pnd->rx_lock);
	/* Endpoints */
	if (FUNC13(data_desc->endpoint[0].desc.bEndpointAddress)) {
		pnd->rx_pipe = FUNC14(usbdev,
			data_desc->endpoint[0].desc.bEndpointAddress);
		pnd->tx_pipe = FUNC17(usbdev,
			data_desc->endpoint[1].desc.bEndpointAddress);
	} else {
		pnd->rx_pipe = FUNC14(usbdev,
			data_desc->endpoint[1].desc.bEndpointAddress);
		pnd->tx_pipe = FUNC17(usbdev,
			data_desc->endpoint[0].desc.bEndpointAddress);
	}
	pnd->active_setting = data_desc - data_intf->altsetting;

	err = FUNC10(&usbpn_driver, data_intf, pnd);
	if (err)
		goto out;

	/* Force inactive mode until the network device is brought UP */
	FUNC15(usbdev, union_header->bSlaveInterface0,
				!pnd->active_setting);
	FUNC16(intf, pnd);

	err = FUNC7(dev);
	if (err) {
		FUNC11(&usbpn_driver, data_intf);
		goto out;
	}

	FUNC3(&dev->dev, "USB CDC Phonet device found\n");
	return 0;

out:
	FUNC16(intf, NULL);
	FUNC4(dev);
	return err;
}