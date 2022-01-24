#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct usb_interface_descriptor {int bNumEndpoints; } ;
struct usb_interface {int num_altsetting; int /*<<< orphan*/  dev; TYPE_4__* altsetting; } ;
struct usb_endpoint_descriptor {int /*<<< orphan*/  wMaxPacketSize; } ;
struct usb_device_id {int dummy; } ;
struct urb {int interval; int transfer_flags; int number_of_packets; int transfer_buffer_length; int /*<<< orphan*/  transfer_dma; void* transfer_buffer; TYPE_1__* iso_frame_desc; int /*<<< orphan*/  complete; int /*<<< orphan*/  pipe; struct ttusbir* context; int /*<<< orphan*/  dev; } ;
struct TYPE_11__ {char* name; char* default_trigger; int /*<<< orphan*/  brightness_get; int /*<<< orphan*/  brightness_set; } ;
struct ttusbir {int bulk_out_endp; int iso_in_endp; int* bulk_buffer; int is_led_on; int led_on; struct urb* bulk_urb; int /*<<< orphan*/  udev; struct urb** urb; TYPE_5__ led; int /*<<< orphan*/ * dev; int /*<<< orphan*/  phys; int /*<<< orphan*/  led_complete; struct rc_dev* rc; } ;
struct TYPE_8__ {int /*<<< orphan*/ * parent; } ;
struct rc_dev {int min_timeout; int timeout; int max_timeout; int /*<<< orphan*/  rx_resolution; int /*<<< orphan*/  map_name; int /*<<< orphan*/  driver_name; struct ttusbir* priv; int /*<<< orphan*/  allowed_protocols; TYPE_2__ dev; int /*<<< orphan*/  input_id; int /*<<< orphan*/  input_phys; int /*<<< orphan*/  device_name; } ;
struct TYPE_10__ {TYPE_3__* endpoint; struct usb_interface_descriptor desc; } ;
struct TYPE_9__ {struct usb_endpoint_descriptor desc; } ;
struct TYPE_7__ {int offset; int length; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_DESC ; 
 int /*<<< orphan*/  DRIVER_NAME ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IR_DEFAULT_TIMEOUT ; 
 int /*<<< orphan*/  NS_PER_BIT ; 
 int NUM_URBS ; 
 int /*<<< orphan*/  RC_DRIVER_IR_RAW ; 
 int /*<<< orphan*/  RC_MAP_TT_1500 ; 
 int /*<<< orphan*/  RC_PROTO_BIT_ALL_IR_DECODER ; 
 int URB_ISO_ASAP ; 
 int URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (struct ttusbir*) ; 
 struct ttusbir* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 struct rc_dev* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rc_dev*) ; 
 int FUNC10 (struct rc_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct rc_dev*) ; 
 int /*<<< orphan*/  ttusbir_brightness_get ; 
 int /*<<< orphan*/  ttusbir_brightness_set ; 
 int /*<<< orphan*/  ttusbir_bulk_complete ; 
 int /*<<< orphan*/  ttusbir_urb_complete ; 
 void* FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC13 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC15 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC16 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC17 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC18 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ,struct ttusbir*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct urb*) ; 
 int /*<<< orphan*/  FUNC21 (struct urb*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int) ; 
 int FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC25 (struct usb_interface*,struct ttusbir*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int) ; 
 int FUNC27 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC29(struct usb_interface *intf,
			 const struct usb_device_id *id)
{
	struct ttusbir *tt;
	struct usb_interface_descriptor *idesc;
	struct usb_endpoint_descriptor *desc;
	struct rc_dev *rc;
	int i, j, ret;
	int altsetting = -1;

	tt = FUNC4(sizeof(*tt), GFP_KERNEL);
	rc = FUNC8(RC_DRIVER_IR_RAW);
	if (!tt || !rc) {
		ret = -ENOMEM;
		goto out;
	}

	/* find the correct alt setting */
	for (i = 0; i < intf->num_altsetting && altsetting == -1; i++) {
		int max_packet, bulk_out_endp = -1, iso_in_endp = -1;

		idesc = &intf->altsetting[i].desc;

		for (j = 0; j < idesc->bNumEndpoints; j++) {
			desc = &intf->altsetting[i].endpoint[j].desc;
			max_packet = FUNC5(desc->wMaxPacketSize);
			if (FUNC14(desc) &&
					FUNC17(desc) &&
					max_packet == 0x10)
				iso_in_endp = j;
			else if (FUNC15(desc) &&
					FUNC16(desc) &&
					max_packet == 0x20)
				bulk_out_endp = j;

			if (bulk_out_endp != -1 && iso_in_endp != -1) {
				tt->bulk_out_endp = bulk_out_endp;
				tt->iso_in_endp = iso_in_endp;
				altsetting = i;
				break;
			}
		}
	}

	if (altsetting == -1) {
		FUNC1(&intf->dev, "cannot find expected altsetting\n");
		ret = -ENODEV;
		goto out;
	}

	tt->dev = &intf->dev;
	tt->udev = FUNC2(intf);
	tt->rc = rc;

	ret = FUNC24(tt->udev, 0, altsetting);
	if (ret)
		goto out;

	for (i = 0; i < NUM_URBS; i++) {
		struct urb *urb = FUNC13(8, GFP_KERNEL);
		void *buffer;

		if (!urb) {
			ret = -ENOMEM;
			goto out;
		}

		urb->dev = tt->udev;
		urb->context = tt;
		urb->pipe = FUNC23(tt->udev, tt->iso_in_endp);
		urb->interval = 1;
		buffer = FUNC12(tt->udev, 128, GFP_KERNEL,
						&urb->transfer_dma);
		if (!buffer) {
			FUNC20(urb);
			ret = -ENOMEM;
			goto out;
		}
		urb->transfer_flags = URB_NO_TRANSFER_DMA_MAP | URB_ISO_ASAP;
		urb->transfer_buffer = buffer;
		urb->complete = ttusbir_urb_complete;
		urb->number_of_packets = 8;
		urb->transfer_buffer_length = 128;

		for (j = 0; j < 8; j++) {
			urb->iso_frame_desc[j].offset = j * 16;
			urb->iso_frame_desc[j].length = 16;
		}

		tt->urb[i] = urb;
	}

	tt->bulk_urb = FUNC13(0, GFP_KERNEL);
	if (!tt->bulk_urb) {
		ret = -ENOMEM;
		goto out;
	}

	tt->bulk_buffer[0] = 0xaa;
	tt->bulk_buffer[1] = 0x01;
	tt->bulk_buffer[2] = 0x05;
	tt->bulk_buffer[3] = 0x01;

	FUNC18(tt->bulk_urb, tt->udev, FUNC26(tt->udev,
		tt->bulk_out_endp), tt->bulk_buffer, sizeof(tt->bulk_buffer),
						ttusbir_bulk_complete, tt);

	tt->led.name = "ttusbir:green:power";
	tt->led.default_trigger = "rc-feedback";
	tt->led.brightness_set = ttusbir_brightness_set;
	tt->led.brightness_get = ttusbir_brightness_get;
	tt->is_led_on = tt->led_on = true;
	FUNC0(&tt->led_complete, 0);
	ret = FUNC6(&intf->dev, &tt->led);
	if (ret)
		goto out;

	FUNC22(tt->udev, tt->phys, sizeof(tt->phys));

	rc->device_name = DRIVER_DESC;
	rc->input_phys = tt->phys;
	FUNC28(tt->udev, &rc->input_id);
	rc->dev.parent = &intf->dev;
	rc->allowed_protocols = RC_PROTO_BIT_ALL_IR_DECODER;
	rc->priv = tt;
	rc->driver_name = DRIVER_NAME;
	rc->map_name = RC_MAP_TT_1500;
	rc->min_timeout = 1;
	rc->timeout = IR_DEFAULT_TIMEOUT;
	rc->max_timeout = 10 * IR_DEFAULT_TIMEOUT;

	/*
	 * The precision is NS_PER_BIT, but since every 8th bit can be
	 * overwritten with garbage the accuracy is at best 2 * NS_PER_BIT.
	 */
	rc->rx_resolution = NS_PER_BIT;

	ret = FUNC10(rc);
	if (ret) {
		FUNC1(&intf->dev, "failed to register rc device %d\n", ret);
		goto out2;
	}

	FUNC25(intf, tt);

	for (i = 0; i < NUM_URBS; i++) {
		ret = FUNC27(tt->urb[i], GFP_KERNEL);
		if (ret) {
			FUNC1(tt->dev, "failed to submit urb %d\n", ret);
			goto out3;
		}
	}

	return 0;
out3:
	FUNC11(rc);
	rc = NULL;
out2:
	FUNC7(&tt->led);
out:
	if (tt) {
		for (i = 0; i < NUM_URBS && tt->urb[i]; i++) {
			struct urb *urb = tt->urb[i];

			FUNC21(urb);
			FUNC19(tt->udev, 128, urb->transfer_buffer,
							urb->transfer_dma);
			FUNC20(urb);
		}
		FUNC21(tt->bulk_urb);
		FUNC20(tt->bulk_urb);
		FUNC3(tt);
	}
	FUNC9(rc);

	return ret;
}