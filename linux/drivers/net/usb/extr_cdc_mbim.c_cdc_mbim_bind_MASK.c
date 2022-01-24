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
typedef  int u8 ;
struct usbnet {TYPE_4__* net; TYPE_3__* status; TYPE_1__* driver_info; int /*<<< orphan*/  data; } ;
struct usb_interface {int /*<<< orphan*/  cur_altsetting; } ;
struct usb_driver {int dummy; } ;
struct cdc_ncm_ctx {TYPE_2__* mbim_desc; int /*<<< orphan*/  control; } ;
struct cdc_mbim_state {struct usb_driver* subdriver; struct cdc_ncm_ctx* ctx; } ;
struct TYPE_8__ {int features; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  flags; } ;
struct TYPE_7__ {int /*<<< orphan*/  desc; } ;
struct TYPE_6__ {int /*<<< orphan*/  wMaxControlMessage; } ;
struct TYPE_5__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 scalar_t__ CDC_NCM_COMM_ALTSETTING_MBIM ; 
 int CDC_NCM_DATA_ALTSETTING_MBIM ; 
 int ENODEV ; 
 struct usb_driver* FUNC0 (int) ; 
 int /*<<< orphan*/  IFF_NOARP ; 
 scalar_t__ FUNC1 (struct usb_driver*) ; 
 int NETIF_F_HW_VLAN_CTAG_FILTER ; 
 int NETIF_F_HW_VLAN_CTAG_TX ; 
 int FUNC2 (struct usb_driver*) ; 
 int /*<<< orphan*/  cdc_mbim_netdev_ops ; 
 int FUNC3 (struct usbnet*,struct usb_interface*,scalar_t__) ; 
 int /*<<< orphan*/  cdc_mbim_wdm_manage_power ; 
 int FUNC4 (struct usbnet*,struct usb_interface*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC7 (struct usbnet*,struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct usb_driver* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct usbnet *dev, struct usb_interface *intf)
{
	struct cdc_ncm_ctx *ctx;
	struct usb_driver *subdriver = FUNC0(-ENODEV);
	int ret = -ENODEV;
	u8 data_altsetting = 1;
	struct cdc_mbim_state *info = (void *)&dev->data;

	/* should we change control altsetting on a NCM/MBIM function? */
	if (FUNC6(intf) == CDC_NCM_COMM_ALTSETTING_MBIM) {
		data_altsetting = CDC_NCM_DATA_ALTSETTING_MBIM;
		ret = FUNC3(dev, intf, CDC_NCM_COMM_ALTSETTING_MBIM);
		if (ret)
			goto err;
		ret = -ENODEV;
	}

	/* we will hit this for NCM/MBIM functions if prefer_mbim is false */
	if (!FUNC5(intf->cur_altsetting))
		goto err;

	ret = FUNC4(dev, intf, data_altsetting, dev->driver_info->data);
	if (ret)
		goto err;

	ctx = info->ctx;

	/* The MBIM descriptor and the status endpoint are required */
	if (ctx->mbim_desc && dev->status)
		subdriver = FUNC9(ctx->control,
						 &dev->status->desc,
						 FUNC8(ctx->mbim_desc->wMaxControlMessage),
						 cdc_mbim_wdm_manage_power);
	if (FUNC1(subdriver)) {
		ret = FUNC2(subdriver);
		FUNC7(dev, intf);
		goto err;
	}

	/* can't let usbnet use the interrupt endpoint */
	dev->status = NULL;
	info->subdriver = subdriver;

	/* MBIM cannot do ARP */
	dev->net->flags |= IFF_NOARP;

	/* no need to put the VLAN tci in the packet headers */
	dev->net->features |= NETIF_F_HW_VLAN_CTAG_TX | NETIF_F_HW_VLAN_CTAG_FILTER;

	/* monitor VLAN additions and removals */
	dev->net->netdev_ops = &cdc_mbim_netdev_ops;
err:
	return ret;
}