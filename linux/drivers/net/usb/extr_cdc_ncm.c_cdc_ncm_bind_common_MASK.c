#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct usbnet {unsigned long* data; TYPE_1__* net; int /*<<< orphan*/  status; int /*<<< orphan*/  out; int /*<<< orphan*/  in; int /*<<< orphan*/  udev; } ;
struct usb_interface {int /*<<< orphan*/  dev; TYPE_7__* cur_altsetting; TYPE_3__* intf_assoc; } ;
struct usb_driver {int dummy; } ;
struct usb_cdc_parsed_header {TYPE_2__* usb_cdc_union_desc; int /*<<< orphan*/  usb_cdc_mbim_extended_desc; int /*<<< orphan*/  usb_cdc_mbim_desc; int /*<<< orphan*/  usb_cdc_ncm_desc; TYPE_4__* usb_cdc_ether_desc; } ;
struct TYPE_13__ {int /*<<< orphan*/ * function; } ;
struct cdc_ncm_ctx {int drvflags; int max_ndp_size; struct usb_interface* data; struct usb_interface* control; void* delayed_ndp16; TYPE_4__* ether_desc; int /*<<< orphan*/  func_desc; int /*<<< orphan*/  mbim_desc; int /*<<< orphan*/  mbim_extended_desc; int /*<<< orphan*/  mtx; int /*<<< orphan*/  stop; int /*<<< orphan*/  bh; TYPE_6__ tx_timer; } ;
typedef  scalar_t__ __le16 ;
struct TYPE_12__ {scalar_t__ bInterfaceNumber; } ;
struct TYPE_14__ {int extralen; TYPE_5__ desc; scalar_t__* extra; } ;
struct TYPE_11__ {int /*<<< orphan*/  iMACAddress; } ;
struct TYPE_10__ {int bInterfaceCount; } ;
struct TYPE_9__ {scalar_t__ bSlaveInterface0; } ;
struct TYPE_8__ {scalar_t__ max_mtu; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/ ** sysfs_groups; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int CDC_MBIM_FLAG_AVOID_ALTSETTING_TOGGLE ; 
 int CDC_NCM_FLAG_NDP_TO_END ; 
 int CDC_NCM_FLAG_RESET_NTB16 ; 
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 int /*<<< orphan*/  USB_CDC_GET_NTB_FORMAT ; 
 int /*<<< orphan*/  USB_CDC_NCM_NTB16_FORMAT ; 
 int /*<<< orphan*/  USB_CDC_NCM_NTB32_FORMAT ; 
 int /*<<< orphan*/  USB_CDC_SET_NTB_FORMAT ; 
 int USB_DIR_IN ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_CLASS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_7__*) ; 
 scalar_t__ FUNC2 (struct usbnet*) ; 
 int /*<<< orphan*/  cdc_ncm_ethtool_ops ; 
 int /*<<< orphan*/  FUNC3 (struct usbnet*,struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC4 (struct cdc_ncm_ctx*) ; 
 scalar_t__ FUNC5 (struct usbnet*) ; 
 scalar_t__ FUNC6 (struct usbnet*) ; 
 int /*<<< orphan*/  cdc_ncm_netdev_ops ; 
 int /*<<< orphan*/  FUNC7 (struct usbnet*) ; 
 int /*<<< orphan*/  cdc_ncm_sysfs_attr_group ; 
 int /*<<< orphan*/  cdc_ncm_tx_timer_cb ; 
 int /*<<< orphan*/  cdc_ncm_txpath_bh ; 
 int /*<<< orphan*/  FUNC8 (struct usb_cdc_parsed_header*,struct usb_interface*,scalar_t__*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,...) ; 
 struct usb_driver* FUNC12 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC17 (struct usb_driver*,struct usb_interface*,struct usbnet*) ; 
 int /*<<< orphan*/  FUNC18 (struct usb_driver*,struct usb_interface*) ; 
 void* FUNC19 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC20 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (struct usb_interface*,struct usbnet*) ; 
 int FUNC22 (struct usbnet*,int /*<<< orphan*/ ) ; 
 int FUNC23 (struct usbnet*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__,scalar_t__*,int) ; 
 int FUNC24 (struct usbnet*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int,int) ; 

int FUNC26(struct usbnet *dev, struct usb_interface *intf, u8 data_altsetting, int drvflags)
{
	struct cdc_ncm_ctx *ctx;
	struct usb_driver *driver;
	u8 *buf;
	int len;
	int temp;
	int err;
	u8 iface_no;
	struct usb_cdc_parsed_header hdr;
	__le16 curr_ntb_format;

	ctx = FUNC14(sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	FUNC13(&ctx->tx_timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
	ctx->tx_timer.function = &cdc_ncm_tx_timer_cb;
	FUNC16(&ctx->bh, cdc_ncm_txpath_bh, (unsigned long)dev);
	FUNC0(&ctx->stop, 0);
	FUNC15(&ctx->mtx);

	/* store ctx pointer in device data field */
	dev->data[0] = (unsigned long)ctx;

	/* only the control interface can be successfully probed */
	ctx->control = intf;

	/* get some pointers */
	driver = FUNC12(intf);
	buf = intf->cur_altsetting->extra;
	len = intf->cur_altsetting->extralen;

	/* parse through descriptors associated with control interface */
	FUNC8(&hdr, intf, buf, len);

	if (hdr.usb_cdc_union_desc)
		ctx->data = FUNC19(dev->udev,
					    hdr.usb_cdc_union_desc->bSlaveInterface0);
	ctx->ether_desc = hdr.usb_cdc_ether_desc;
	ctx->func_desc = hdr.usb_cdc_ncm_desc;
	ctx->mbim_desc = hdr.usb_cdc_mbim_desc;
	ctx->mbim_extended_desc = hdr.usb_cdc_mbim_extended_desc;

	/* some buggy devices have an IAD but no CDC Union */
	if (!hdr.usb_cdc_union_desc && intf->intf_assoc && intf->intf_assoc->bInterfaceCount == 2) {
		ctx->data = FUNC19(dev->udev, intf->cur_altsetting->desc.bInterfaceNumber + 1);
		FUNC10(&intf->dev, "CDC Union missing - got slave from IAD\n");
	}

	/* check if we got everything */
	if (!ctx->data) {
		FUNC10(&intf->dev, "CDC Union missing and no IAD found\n");
		goto error;
	}
	if (FUNC1(intf->cur_altsetting)) {
		if (!ctx->mbim_desc) {
			FUNC10(&intf->dev, "MBIM functional descriptor missing\n");
			goto error;
		}
	} else {
		if (!ctx->ether_desc || !ctx->func_desc) {
			FUNC10(&intf->dev, "NCM or ECM functional descriptors missing\n");
			goto error;
		}
	}

	/* claim data interface, if different from control */
	if (ctx->data != ctx->control) {
		temp = FUNC17(driver, ctx->data, dev);
		if (temp) {
			FUNC10(&intf->dev, "failed to claim data intf\n");
			goto error;
		}
	}

	iface_no = ctx->data->cur_altsetting->desc.bInterfaceNumber;

	/* Device-specific flags */
	ctx->drvflags = drvflags;

	/* Reset data interface. Some devices will not reset properly
	 * unless they are configured first.  Toggle the altsetting to
	 * force a reset.
	 * Some other devices do not work properly with this procedure
	 * that can be avoided using quirk CDC_MBIM_FLAG_AVOID_ALTSETTING_TOGGLE
	 */
	if (!(ctx->drvflags & CDC_MBIM_FLAG_AVOID_ALTSETTING_TOGGLE))
		FUNC20(dev->udev, iface_no, data_altsetting);

	temp = FUNC20(dev->udev, iface_no, 0);
	if (temp) {
		FUNC10(&intf->dev, "set interface failed\n");
		goto error2;
	}

	/* initialize basic device settings */
	if (FUNC5(dev))
		goto error2;

	/* Some firmwares need a pause here or they will silently fail
	 * to set up the interface properly.  This value was decided
	 * empirically on a Sierra Wireless MC7455 running 02.08.02.00
	 * firmware.
	 */
	FUNC25(10000, 20000);

	/* configure data interface */
	temp = FUNC20(dev->udev, iface_no, data_altsetting);
	if (temp) {
		FUNC10(&intf->dev, "set interface failed\n");
		goto error2;
	}

	/*
	 * Some Huawei devices have been observed to come out of reset in NDP32 mode.
	 * Let's check if this is the case, and set the device to NDP16 mode again if
	 * needed.
	*/
	if (ctx->drvflags & CDC_NCM_FLAG_RESET_NTB16) {
		err = FUNC23(dev, USB_CDC_GET_NTB_FORMAT,
				      USB_TYPE_CLASS | USB_DIR_IN | USB_RECIP_INTERFACE,
				      0, iface_no, &curr_ntb_format, 2);
		if (err < 0) {
			goto error2;
		}

		if (curr_ntb_format == FUNC9(USB_CDC_NCM_NTB32_FORMAT)) {
			FUNC11(&intf->dev, "resetting NTB format to 16-bit");
			err = FUNC24(dev, USB_CDC_SET_NTB_FORMAT,
					       USB_TYPE_CLASS | USB_DIR_OUT
					       | USB_RECIP_INTERFACE,
					       USB_CDC_NCM_NTB16_FORMAT,
					       iface_no, NULL, 0);

			if (err < 0)
				goto error2;
		}
	}

	FUNC3(dev, ctx->data);
	FUNC3(dev, ctx->control);
	if (!dev->in || !dev->out || !dev->status) {
		FUNC10(&intf->dev, "failed to collect endpoints\n");
		goto error2;
	}

	FUNC21(ctx->data, dev);
	FUNC21(ctx->control, dev);

	if (ctx->ether_desc) {
		temp = FUNC22(dev, ctx->ether_desc->iMACAddress);
		if (temp) {
			FUNC10(&intf->dev, "failed to get mac address\n");
			goto error2;
		}
		FUNC11(&intf->dev, "MAC-Address: %pM\n", dev->net->dev_addr);
	}

	/* finish setting up the device specific data */
	FUNC7(dev);

	/* Allocate the delayed NDP if needed. */
	if (ctx->drvflags & CDC_NCM_FLAG_NDP_TO_END) {
		ctx->delayed_ndp16 = FUNC14(ctx->max_ndp_size, GFP_KERNEL);
		if (!ctx->delayed_ndp16)
			goto error2;
		FUNC11(&intf->dev, "NDP will be placed at end of frame for this device.");
	}

	/* override ethtool_ops */
	dev->net->ethtool_ops = &cdc_ncm_ethtool_ops;

	/* add our sysfs attrs */
	dev->net->sysfs_groups[0] = &cdc_ncm_sysfs_attr_group;

	/* must handle MTU changes */
	dev->net->netdev_ops = &cdc_ncm_netdev_ops;
	dev->net->max_mtu = FUNC6(dev) - FUNC2(dev);

	return 0;

error2:
	FUNC21(ctx->control, NULL);
	FUNC21(ctx->data, NULL);
	if (ctx->data != ctx->control)
		FUNC18(driver, ctx->data);
error:
	FUNC4((struct cdc_ncm_ctx *)dev->data[0]);
	dev->data[0] = 0;
	FUNC11(&intf->dev, "bind() failure\n");
	return -ENODEV;
}