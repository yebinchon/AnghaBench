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
typedef  int u16 ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct vprbrd {int* buf; TYPE_3__* usb_dev; TYPE_1__ pdev; int /*<<< orphan*/  lock; } ;
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  devnum; TYPE_2__* bus; } ;
struct TYPE_8__ {int /*<<< orphan*/  busnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  VPRBRD_USB_REQUEST_MAJOR ; 
 int /*<<< orphan*/  VPRBRD_USB_REQUEST_MINOR ; 
 int /*<<< orphan*/  VPRBRD_USB_TIMEOUT_MS ; 
 int /*<<< orphan*/  VPRBRD_USB_TYPE_IN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct vprbrd*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (struct vprbrd*) ; 
 struct vprbrd* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int*,int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int FUNC12 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_interface*,struct vprbrd*) ; 
 int /*<<< orphan*/  vprbrd_devs ; 

__attribute__((used)) static int FUNC14(struct usb_interface *interface,
			      const struct usb_device_id *id)
{
	struct vprbrd *vb;

	u16 version = 0;
	int pipe, ret;

	/* allocate memory for our device state and initialize it */
	vb = FUNC6(sizeof(*vb), GFP_KERNEL);
	if (!vb)
		return -ENOMEM;

	FUNC8(&vb->lock);

	vb->usb_dev = FUNC10(FUNC4(interface));

	/* save our data pointer in this interface device */
	FUNC13(interface, vb);
	FUNC3(&vb->pdev.dev, vb);

	/* get version information, major first, minor then */
	pipe = FUNC12(vb->usb_dev, 0);
	ret = FUNC9(vb->usb_dev, pipe, VPRBRD_USB_REQUEST_MAJOR,
		VPRBRD_USB_TYPE_IN, 0x0000, 0x0000, vb->buf, 1,
		VPRBRD_USB_TIMEOUT_MS);
	if (ret == 1)
		version = vb->buf[0];

	ret = FUNC9(vb->usb_dev, pipe, VPRBRD_USB_REQUEST_MINOR,
		VPRBRD_USB_TYPE_IN, 0x0000, 0x0000, vb->buf, 1,
		VPRBRD_USB_TIMEOUT_MS);
	if (ret == 1) {
		version <<= 8;
		version = version | vb->buf[0];
	}

	FUNC2(&interface->dev,
		 "version %x.%02x found at bus %03d address %03d\n",
		 version >> 8, version & 0xff,
		 vb->usb_dev->bus->busnum, vb->usb_dev->devnum);

	ret = FUNC7(&interface->dev, vprbrd_devs,
				      FUNC0(vprbrd_devs));
	if (ret != 0) {
		FUNC1(&interface->dev, "Failed to add mfd devices to core.");
		goto error;
	}

	return 0;

error:
	if (vb) {
		FUNC11(vb->usb_dev);
		FUNC5(vb);
	}

	return ret;
}