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
struct usb_interface {int /*<<< orphan*/  dev; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_4__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {int /*<<< orphan*/  bInterval; int /*<<< orphan*/  bEndpointAddress; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/ * parent; } ;
struct rc_dev {char* device_name; struct imon* priv; int /*<<< orphan*/  rx_resolution; int /*<<< orphan*/  map_name; int /*<<< orphan*/  allowed_protocols; TYPE_3__ dev; int /*<<< orphan*/  input_id; int /*<<< orphan*/  input_phys; int /*<<< orphan*/  driver_name; } ;
struct imon {int /*<<< orphan*/  ir_urb; struct rc_dev* rcdev; int /*<<< orphan*/  phys; int /*<<< orphan*/  ir_buf; int /*<<< orphan*/ * dev; } ;
struct TYPE_5__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_DURATION ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int /*<<< orphan*/  RC_DRIVER_IR_RAW ; 
 int /*<<< orphan*/  RC_MAP_IMON_RSC ; 
 int /*<<< orphan*/  RC_PROTO_BIT_ALL_IR_DECODER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct imon* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct rc_dev* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct rc_dev*) ; 
 int /*<<< orphan*/  imon_ir_rx ; 
 struct usb_device* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct imon*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_interface*,struct imon*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct usb_interface *intf,
		      const struct usb_device_id *id)
{
	struct usb_endpoint_descriptor *ir_ep = NULL;
	struct usb_host_interface *idesc;
	struct usb_device *udev;
	struct rc_dev *rcdev;
	struct imon *imon;
	int i, ret;

	udev = FUNC4(intf);
	idesc = intf->cur_altsetting;

	for (i = 0; i < idesc->desc.bNumEndpoints; i++) {
		struct usb_endpoint_descriptor *ep = &idesc->endpoint[i].desc;

		if (FUNC6(ep)) {
			ir_ep = ep;
			break;
		}
	}

	if (!ir_ep) {
		FUNC0(&intf->dev, "IR endpoint missing");
		return -ENODEV;
	}

	imon = FUNC1(&intf->dev, sizeof(*imon), GFP_KERNEL);
	if (!imon)
		return -ENOMEM;

	imon->ir_urb = FUNC5(0, GFP_KERNEL);
	if (!imon->ir_urb)
		return -ENOMEM;

	imon->dev = &intf->dev;
	FUNC7(imon->ir_urb, udev,
			 FUNC10(udev, ir_ep->bEndpointAddress),
			 &imon->ir_buf, sizeof(imon->ir_buf),
			 imon_ir_rx, imon, ir_ep->bInterval);

	rcdev = FUNC2(&intf->dev, RC_DRIVER_IR_RAW);
	if (!rcdev) {
		ret = -ENOMEM;
		goto free_urb;
	}

	FUNC9(udev, imon->phys, sizeof(imon->phys));

	rcdev->device_name = "iMON Station";
	rcdev->driver_name = KBUILD_MODNAME;
	rcdev->input_phys = imon->phys;
	FUNC13(udev, &rcdev->input_id);
	rcdev->dev.parent = &intf->dev;
	rcdev->allowed_protocols = RC_PROTO_BIT_ALL_IR_DECODER;
	rcdev->map_name = RC_MAP_IMON_RSC;
	rcdev->rx_resolution = BIT_DURATION;
	rcdev->priv = imon;

	ret = FUNC3(&intf->dev, rcdev);
	if (ret)
		goto free_urb;

	imon->rcdev = rcdev;

	ret = FUNC12(imon->ir_urb, GFP_KERNEL);
	if (ret)
		goto free_urb;

	FUNC11(intf, imon);

	return 0;

free_urb:
	FUNC8(imon->ir_urb);
	return ret;
}