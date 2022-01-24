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
typedef  int /*<<< orphan*/  uint8_t ;
struct usb_interface {int /*<<< orphan*/  dev; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_5__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/ * parent; } ;
struct rc_dev {int allowed_protocols; int rx_resolution; int /*<<< orphan*/  timeout; int /*<<< orphan*/  map_name; int /*<<< orphan*/  driver_name; struct igorplugusb* priv; TYPE_4__ dev; int /*<<< orphan*/  input_id; int /*<<< orphan*/  input_phys; int /*<<< orphan*/  device_name; } ;
struct TYPE_7__ {int bRequestType; int /*<<< orphan*/  wLength; int /*<<< orphan*/  bRequest; } ;
struct igorplugusb {int /*<<< orphan*/  timer; int /*<<< orphan*/  urb; struct rc_dev* rc; int /*<<< orphan*/  phys; int /*<<< orphan*/  buf_in; TYPE_3__ request; int /*<<< orphan*/ * dev; } ;
struct TYPE_6__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_DESC ; 
 int /*<<< orphan*/  DRIVER_NAME ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GET_INFRACODE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RC_DRIVER_IR_RAW ; 
 int /*<<< orphan*/  RC_MAP_HAUPPAUGE ; 
 int RC_PROTO_BIT_ALL_IR_DECODER ; 
 int RC_PROTO_BIT_NEC ; 
 int RC_PROTO_BIT_NEC32 ; 
 int RC_PROTO_BIT_NECX ; 
 int RC_PROTO_BIT_RC6_6A_20 ; 
 int RC_PROTO_BIT_RC6_6A_24 ; 
 int RC_PROTO_BIT_RC6_6A_32 ; 
 int RC_PROTO_BIT_RC6_MCE ; 
 int RC_PROTO_BIT_SANYO ; 
 int RC_PROTO_BIT_SONY20 ; 
 int /*<<< orphan*/  SET_INFRABUFFER_EMPTY ; 
 int USB_DIR_IN ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 struct igorplugusb* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  igorplugusb_callback ; 
 int /*<<< orphan*/  FUNC5 (struct igorplugusb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  igorplugusb_timer ; 
 struct usb_device* FUNC6 (struct usb_interface*) ; 
 struct rc_dev* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rc_dev*) ; 
 int FUNC9 (struct rc_dev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct igorplugusb*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct usb_interface*,struct igorplugusb*) ; 
 int /*<<< orphan*/  FUNC19 (struct usb_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(struct usb_interface *intf,
					const struct usb_device_id *id)
{
	struct usb_device *udev;
	struct usb_host_interface *idesc;
	struct usb_endpoint_descriptor *ep;
	struct igorplugusb *ir;
	struct rc_dev *rc;
	int ret = -ENOMEM;

	udev = FUNC6(intf);
	idesc = intf->cur_altsetting;

	if (idesc->desc.bNumEndpoints != 1) {
		FUNC3(&intf->dev, "incorrect number of endpoints");
		return -ENODEV;
	}

	ep = &idesc->endpoint[0].desc;
	if (!FUNC12(ep) || !FUNC13(ep)) {
		FUNC3(&intf->dev, "endpoint incorrect");
		return -ENODEV;
	}

	ir = FUNC4(&intf->dev, sizeof(*ir), GFP_KERNEL);
	if (!ir)
		return -ENOMEM;

	ir->dev = &intf->dev;

	FUNC10(&ir->timer, igorplugusb_timer, 0);

	ir->request.bRequest = GET_INFRACODE;
	ir->request.bRequestType = USB_TYPE_VENDOR | USB_DIR_IN;
	ir->request.wLength = FUNC1(sizeof(ir->buf_in));

	ir->urb = FUNC11(0, GFP_KERNEL);
	if (!ir->urb)
		goto fail;

	FUNC14(ir->urb, udev,
		FUNC17(udev, 0), (uint8_t *)&ir->request,
		ir->buf_in, sizeof(ir->buf_in), igorplugusb_callback, ir);

	FUNC16(udev, ir->phys, sizeof(ir->phys));

	rc = FUNC7(RC_DRIVER_IR_RAW);
	if (!rc)
		goto fail;

	rc->device_name = DRIVER_DESC;
	rc->input_phys = ir->phys;
	FUNC19(udev, &rc->input_id);
	rc->dev.parent = &intf->dev;
	/*
	 * This device can only store 36 pulses + spaces, which is not enough
	 * for the NEC protocol and many others.
	 */
	rc->allowed_protocols = RC_PROTO_BIT_ALL_IR_DECODER &
		~(RC_PROTO_BIT_NEC | RC_PROTO_BIT_NECX | RC_PROTO_BIT_NEC32 |
		  RC_PROTO_BIT_RC6_6A_20 | RC_PROTO_BIT_RC6_6A_24 |
		  RC_PROTO_BIT_RC6_6A_32 | RC_PROTO_BIT_RC6_MCE |
		  RC_PROTO_BIT_SONY20 | RC_PROTO_BIT_SANYO);

	rc->priv = ir;
	rc->driver_name = DRIVER_NAME;
	rc->map_name = RC_MAP_HAUPPAUGE;
	rc->timeout = FUNC0(100);
	rc->rx_resolution = 85333;

	ir->rc = rc;
	ret = FUNC9(rc);
	if (ret) {
		FUNC3(&intf->dev, "failed to register rc device: %d", ret);
		goto fail;
	}

	FUNC18(intf, ir);

	FUNC5(ir, SET_INFRABUFFER_EMPTY);

	return 0;
fail:
	FUNC8(ir->rc);
	FUNC15(ir->urb);
	FUNC2(&ir->timer);

	return ret;
}