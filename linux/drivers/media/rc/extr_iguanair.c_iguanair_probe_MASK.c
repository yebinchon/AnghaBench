#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int /*<<< orphan*/  dev; struct usb_host_interface* altsetting; } ;
struct TYPE_10__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/ * parent; } ;
struct rc_dev {int min_timeout; int timeout; int max_timeout; int /*<<< orphan*/  rx_resolution; int /*<<< orphan*/  map_name; int /*<<< orphan*/  driver_name; int /*<<< orphan*/  tx_ir; int /*<<< orphan*/  (* s_tx_carrier ) (struct rc_dev*,int) ;int /*<<< orphan*/  (* s_tx_mask ) (struct rc_dev*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  close; int /*<<< orphan*/  open; struct iguanair* priv; int /*<<< orphan*/  allowed_protocols; TYPE_3__ dev; int /*<<< orphan*/  input_id; int /*<<< orphan*/  input_phys; int /*<<< orphan*/  device_name; } ;
struct iguanair {int version; int /*<<< orphan*/  dma_out; void* packet; int /*<<< orphan*/  dma_in; void* buf_in; TYPE_4__* urb_out; TYPE_4__* urb_in; struct usb_device* udev; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; int /*<<< orphan*/  completion; int /*<<< orphan*/  lock; int /*<<< orphan*/ * dev; struct rc_dev* rc; } ;
struct TYPE_14__ {int /*<<< orphan*/  bEndpointAddress; } ;
struct TYPE_13__ {int /*<<< orphan*/  transfer_flags; int /*<<< orphan*/  transfer_dma; } ;
struct TYPE_11__ {TYPE_8__ desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IR_DEFAULT_TIMEOUT ; 
 int /*<<< orphan*/  MAX_IN_PACKET ; 
 int /*<<< orphan*/  MAX_OUT_PACKET ; 
 int /*<<< orphan*/  RC_DRIVER_IR_RAW ; 
 int /*<<< orphan*/  RC_MAP_RC6_MCE ; 
 int /*<<< orphan*/  RC_PROTO_BIT_ALL_IR_DECODER ; 
 int /*<<< orphan*/  RX_RESOLUTION ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  iguanair_close ; 
 int FUNC2 (struct iguanair*) ; 
 int /*<<< orphan*/  iguanair_irq_out ; 
 int /*<<< orphan*/  iguanair_open ; 
 int /*<<< orphan*/  iguanair_rx ; 
 int /*<<< orphan*/  FUNC3 (struct rc_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rc_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iguanair_tx ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC6 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC7 (struct iguanair*) ; 
 struct iguanair* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct rc_dev* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct rc_dev*) ; 
 int FUNC12 (struct rc_dev*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,char*,int) ; 
 void* FUNC14 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*,struct usb_device*,int,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iguanair*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct usb_device*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC22 (struct usb_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC23 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct usb_interface*,struct iguanair*) ; 
 int FUNC25 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int FUNC26 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct usb_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC28(struct usb_interface *intf,
			  const struct usb_device_id *id)
{
	struct usb_device *udev = FUNC6(intf);
	struct iguanair *ir;
	struct rc_dev *rc;
	int ret, pipein, pipeout;
	struct usb_host_interface *idesc;

	idesc = intf->altsetting;
	if (idesc->desc.bNumEndpoints < 2)
		return -ENODEV;

	ir = FUNC8(sizeof(*ir), GFP_KERNEL);
	rc = FUNC10(RC_DRIVER_IR_RAW);
	if (!ir || !rc) {
		ret = -ENOMEM;
		goto out;
	}

	ir->buf_in = FUNC14(udev, MAX_IN_PACKET, GFP_KERNEL,
								&ir->dma_in);
	ir->packet = FUNC14(udev, MAX_OUT_PACKET, GFP_KERNEL,
								&ir->dma_out);
	ir->urb_in = FUNC15(0, GFP_KERNEL);
	ir->urb_out = FUNC15(0, GFP_KERNEL);

	if (!ir->buf_in || !ir->packet || !ir->urb_in || !ir->urb_out ||
	    !FUNC16(&idesc->endpoint[0].desc) ||
	    !FUNC17(&idesc->endpoint[1].desc)) {
		ret = -ENOMEM;
		goto out;
	}

	ir->rc = rc;
	ir->dev = &intf->dev;
	ir->udev = udev;
	FUNC9(&ir->lock);

	FUNC5(&ir->completion);
	pipeout = FUNC25(udev,
				idesc->endpoint[1].desc.bEndpointAddress);
	FUNC18(ir->urb_out, udev, pipeout, ir->packet, MAX_OUT_PACKET,
						iguanair_irq_out, ir, 1);
	ir->urb_out->transfer_dma = ir->dma_out;
	ir->urb_out->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

	pipein = FUNC23(udev, idesc->endpoint[0].desc.bEndpointAddress);
	FUNC18(ir->urb_in, udev, pipein, ir->buf_in, MAX_IN_PACKET,
							 iguanair_rx, ir, 1);
	ir->urb_in->transfer_dma = ir->dma_in;
	ir->urb_in->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

	ret = FUNC26(ir->urb_in, GFP_KERNEL);
	if (ret) {
		FUNC1(&intf->dev, "failed to submit urb: %d\n", ret);
		goto out;
	}

	ret = FUNC2(ir);
	if (ret)
		goto out2;

	FUNC13(ir->name, sizeof(ir->name),
		"IguanaWorks USB IR Transceiver version 0x%04x", ir->version);

	FUNC22(ir->udev, ir->phys, sizeof(ir->phys));

	rc->device_name = ir->name;
	rc->input_phys = ir->phys;
	FUNC27(ir->udev, &rc->input_id);
	rc->dev.parent = &intf->dev;
	rc->allowed_protocols = RC_PROTO_BIT_ALL_IR_DECODER;
	rc->priv = ir;
	rc->open = iguanair_open;
	rc->close = iguanair_close;
	rc->s_tx_mask = iguanair_set_tx_mask;
	rc->s_tx_carrier = iguanair_set_tx_carrier;
	rc->tx_ir = iguanair_tx;
	rc->driver_name = DRIVER_NAME;
	rc->map_name = RC_MAP_RC6_MCE;
	rc->min_timeout = 1;
	rc->timeout = IR_DEFAULT_TIMEOUT;
	rc->max_timeout = 10 * IR_DEFAULT_TIMEOUT;
	rc->rx_resolution = RX_RESOLUTION;

	FUNC3(rc, 38000);
	FUNC4(rc, 0);

	ret = FUNC12(rc);
	if (ret < 0) {
		FUNC0(&intf->dev, "failed to register rc device %d", ret);
		goto out2;
	}

	FUNC24(intf, ir);

	return 0;
out2:
	FUNC21(ir->urb_in);
	FUNC21(ir->urb_out);
out:
	if (ir) {
		FUNC20(ir->urb_in);
		FUNC20(ir->urb_out);
		FUNC19(udev, MAX_IN_PACKET, ir->buf_in, ir->dma_in);
		FUNC19(udev, MAX_OUT_PACKET, ir->packet,
								ir->dma_out);
	}
	FUNC11(rc);
	FUNC7(ir);
	return ret;
}