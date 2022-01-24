#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int /*<<< orphan*/  dev; TYPE_2__* altsetting; } ;
struct usb_device_id {int dummy; } ;
struct gs_usb {int byte_order; int icount; TYPE_3__** canch; int /*<<< orphan*/  rx_submitted; int /*<<< orphan*/  udev; int /*<<< orphan*/  active_channels; } ;
struct gs_host_config {int byte_order; int icount; TYPE_3__** canch; int /*<<< orphan*/  rx_submitted; int /*<<< orphan*/  udev; int /*<<< orphan*/  active_channels; } ;
struct gs_device_config {int byte_order; int icount; TYPE_3__** canch; int /*<<< orphan*/  rx_submitted; int /*<<< orphan*/  udev; int /*<<< orphan*/  active_channels; } ;
struct TYPE_9__ {struct gs_usb* parent; } ;
struct TYPE_7__ {int /*<<< orphan*/  bInterfaceNumber; } ;
struct TYPE_8__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int GS_MAX_INTF ; 
 int /*<<< orphan*/  GS_USB_BREQ_DEVICE_CONFIG ; 
 int /*<<< orphan*/  GS_USB_BREQ_HOST_FORMAT ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int FUNC1 (TYPE_3__*) ; 
 int USB_DIR_IN ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 TYPE_3__* FUNC6 (unsigned int,struct usb_interface*,struct gs_usb*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC9 (struct gs_usb*) ; 
 struct gs_usb* FUNC10 (int,int /*<<< orphan*/ ) ; 
 struct gs_usb* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,struct gs_usb*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_interface*,struct gs_usb*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct usb_interface *intf,
			const struct usb_device_id *id)
{
	struct gs_usb *dev;
	int rc = -ENOMEM;
	unsigned int icount, i;
	struct gs_host_config *hconf;
	struct gs_device_config *dconf;

	hconf = FUNC10(sizeof(*hconf), GFP_KERNEL);
	if (!hconf)
		return -ENOMEM;

	hconf->byte_order = 0x0000beef;

	/* send host config */
	rc = FUNC12(FUNC8(intf),
			     FUNC16(FUNC8(intf), 0),
			     GS_USB_BREQ_HOST_FORMAT,
			     USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_INTERFACE,
			     1,
			     intf->altsetting[0].desc.bInterfaceNumber,
			     hconf,
			     sizeof(*hconf),
			     1000);

	FUNC9(hconf);

	if (rc < 0) {
		FUNC3(&intf->dev, "Couldn't send data format (err=%d)\n",
			rc);
		return rc;
	}

	dconf = FUNC10(sizeof(*dconf), GFP_KERNEL);
	if (!dconf)
		return -ENOMEM;

	/* read device config */
	rc = FUNC12(FUNC8(intf),
			     FUNC14(FUNC8(intf), 0),
			     GS_USB_BREQ_DEVICE_CONFIG,
			     USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_INTERFACE,
			     1,
			     intf->altsetting[0].desc.bInterfaceNumber,
			     dconf,
			     sizeof(*dconf),
			     1000);
	if (rc < 0) {
		FUNC3(&intf->dev, "Couldn't get device config: (err=%d)\n",
			rc);
		FUNC9(dconf);
		return rc;
	}

	icount = dconf->icount + 1;
	FUNC4(&intf->dev, "Configuring for %d interfaces\n", icount);

	if (icount > GS_MAX_INTF) {
		FUNC3(&intf->dev,
			"Driver cannot handle more that %d CAN interfaces\n",
			GS_MAX_INTF);
		FUNC9(dconf);
		return -EINVAL;
	}

	dev = FUNC11(sizeof(*dev), GFP_KERNEL);
	if (!dev) {
		FUNC9(dconf);
		return -ENOMEM;
	}

	FUNC7(&dev->rx_submitted);

	FUNC2(&dev->active_channels, 0);

	FUNC15(intf, dev);
	dev->udev = FUNC8(intf);

	for (i = 0; i < icount; i++) {
		dev->canch[i] = FUNC6(i, intf, dconf);
		if (FUNC0(dev->canch[i])) {
			/* save error code to return later */
			rc = FUNC1(dev->canch[i]);

			/* on failure destroy previously created candevs */
			icount = i;
			for (i = 0; i < icount; i++)
				FUNC5(dev->canch[i]);

			FUNC13(&dev->rx_submitted);
			FUNC9(dconf);
			FUNC9(dev);
			return rc;
		}
		dev->canch[i]->parent = dev;
	}

	FUNC9(dconf);

	return 0;
}