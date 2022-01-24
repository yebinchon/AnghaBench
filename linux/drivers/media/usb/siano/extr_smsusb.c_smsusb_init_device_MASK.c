#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {TYPE_3__* cur_altsetting; } ;
struct usb_endpoint_descriptor {int bEndpointAddress; } ;
struct smsusb_device_t {int in_ep; int out_ep; int response_alignment; TYPE_6__* coredev; int /*<<< orphan*/  state; TYPE_4__* surbs; TYPE_5__* udev; int /*<<< orphan*/  buffer_size; } ;
struct smsdevice_params_t {int device_type; int /*<<< orphan*/  devpath; struct smsusb_device_t* context; int /*<<< orphan*/  sendrequest_handler; int /*<<< orphan*/  num_buffers; int /*<<< orphan*/  buffer_size; TYPE_5__* usb_device; int /*<<< orphan*/ * device; int /*<<< orphan*/  flags; int /*<<< orphan*/  detectmode_handler; int /*<<< orphan*/  setmode_handler; } ;
struct sms_msg_hdr {int dummy; } ;
typedef  int /*<<< orphan*/  params ;
struct TYPE_17__ {int type; } ;
struct TYPE_16__ {int is_usb_device; } ;
struct TYPE_15__ {int /*<<< orphan*/  dev; } ;
struct TYPE_14__ {int /*<<< orphan*/  urb; struct smsusb_device_t* dev; } ;
struct TYPE_11__ {int bNumEndpoints; } ;
struct TYPE_13__ {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct TYPE_12__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAX_BUFFERS ; 
 int MAX_URBS ; 
 int /*<<< orphan*/  SMSUSB_ACTIVE ; 
 int /*<<< orphan*/  SMSUSB_DISCONNECTED ; 
 int /*<<< orphan*/  SMS_DEVICE_FAMILY2 ; 
#define  SMS_STELLAR 129 
#define  SMS_UNKNOWN_TYPE 128 
 int /*<<< orphan*/  USB1_BUFFER_SIZE ; 
 int /*<<< orphan*/  USB2_BUFFER_SIZE ; 
 int USB_DIR_IN ; 
 TYPE_5__* FUNC0 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 struct smsusb_device_t* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct smsdevice_params_t*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 void* FUNC7 (struct smsusb_device_t*,int) ; 
 TYPE_9__* FUNC8 (int) ; 
 int FUNC9 (struct smsdevice_params_t*,TYPE_6__**,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,int) ; 
 int FUNC11 (TYPE_6__*) ; 
 int /*<<< orphan*/  smsusb1_detectmode ; 
 int /*<<< orphan*/  smsusb1_setmode ; 
 int /*<<< orphan*/  smsusb_sendrequest ; 
 int FUNC12 (struct smsusb_device_t*) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_interface*) ; 
 int FUNC14 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct usb_interface*,struct smsusb_device_t*) ; 

__attribute__((used)) static int FUNC18(struct usb_interface *intf, int board_id)
{
	struct smsdevice_params_t params;
	struct smsusb_device_t *dev;
	void *mdev;
	int i, rc;
	int align = 0;

	/* create device object */
	dev = FUNC2(sizeof(struct smsusb_device_t), GFP_KERNEL);
	if (!dev)
		return -ENOMEM;

	FUNC4(&params, 0, sizeof(params));
	FUNC17(intf, dev);
	dev->udev = FUNC0(intf);
	dev->state = SMSUSB_DISCONNECTED;

	for (i = 0; i < intf->cur_altsetting->desc.bNumEndpoints; i++) {
		struct usb_endpoint_descriptor *desc =
				&intf->cur_altsetting->endpoint[i].desc;

		if (desc->bEndpointAddress & USB_DIR_IN) {
			dev->in_ep = desc->bEndpointAddress;
			align = FUNC14(desc) - sizeof(struct sms_msg_hdr);
		} else {
			dev->out_ep = desc->bEndpointAddress;
		}
	}

	FUNC5("in_ep = %02x, out_ep = %02x\n", dev->in_ep, dev->out_ep);
	if (!dev->in_ep || !dev->out_ep || align < 0) {  /* Missing endpoints? */
		FUNC13(intf);
		return -ENODEV;
	}

	params.device_type = FUNC8(board_id)->type;

	switch (params.device_type) {
	case SMS_STELLAR:
		dev->buffer_size = USB1_BUFFER_SIZE;

		params.setmode_handler = smsusb1_setmode;
		params.detectmode_handler = smsusb1_detectmode;
		break;
	case SMS_UNKNOWN_TYPE:
		FUNC6("Unspecified sms device type!\n");
		/* fall-thru */
	default:
		dev->buffer_size = USB2_BUFFER_SIZE;
		dev->response_alignment = align;

		params.flags |= SMS_DEVICE_FAMILY2;
		break;
	}

	params.device = &dev->udev->dev;
	params.usb_device = dev->udev;
	params.buffer_size = dev->buffer_size;
	params.num_buffers = MAX_BUFFERS;
	params.sendrequest_handler = smsusb_sendrequest;
	params.context = dev;
	FUNC16(dev->udev, params.devpath, sizeof(params.devpath));

	mdev = FUNC7(dev, board_id);

	/* register in smscore */
	rc = FUNC9(&params, &dev->coredev, 0, mdev);
	if (rc < 0) {
		FUNC6("smscore_register_device(...) failed, rc %d\n", rc);
		FUNC13(intf);
#ifdef CONFIG_MEDIA_CONTROLLER_DVB
		media_device_unregister(mdev);
#endif
		FUNC1(mdev);
		return rc;
	}

	FUNC10(dev->coredev, board_id);

	dev->coredev->is_usb_device = true;

	/* initialize urbs */
	for (i = 0; i < MAX_URBS; i++) {
		dev->surbs[i].dev = dev;
		FUNC15(&dev->surbs[i].urb);
	}

	FUNC5("smsusb_start_streaming(...).\n");
	rc = FUNC12(dev);
	if (rc < 0) {
		FUNC6("smsusb_start_streaming(...) failed\n");
		FUNC13(intf);
		return rc;
	}

	dev->state = SMSUSB_ACTIVE;

	rc = FUNC11(dev->coredev);
	if (rc < 0) {
		FUNC6("smscore_start_device(...) failed\n");
		FUNC13(intf);
		return rc;
	}

	FUNC5("device 0x%p created\n", dev);

	return rc;
}