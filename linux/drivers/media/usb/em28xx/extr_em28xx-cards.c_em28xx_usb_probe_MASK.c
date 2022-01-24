#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int num_altsetting; int /*<<< orphan*/  dev; TYPE_7__* altsetting; } ;
struct usb_device_id {scalar_t__ driver_info; } ;
struct TYPE_9__ {int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct usb_device {int speed; char* manufacturer; char* product; TYPE_3__* config; TYPE_1__ descriptor; } ;
struct TYPE_12__ {scalar_t__ decoder; scalar_t__ has_ir_i2c; int /*<<< orphan*/ * ir_codes; scalar_t__ has_dual_ts; } ;
struct em28xx {int devno; int alt; int is_audio_only; int has_video; int ifnum; int num_alt; scalar_t__ em28xx_sensor; scalar_t__ tuner_type; int analog_xfer_bulk; int dvb_xfer_bulk; struct em28xx* alt_max_pkt_size_isoc; int /*<<< orphan*/  media_dev; int /*<<< orphan*/  ref; struct em28xx* dev_next; int /*<<< orphan*/  dvb_alt_isoc; int /*<<< orphan*/  dvb_max_pkt_size_isoc_ts2; int /*<<< orphan*/  dvb_max_pkt_size_isoc; scalar_t__ dvb_ep_bulk_ts2; scalar_t__ dvb_ep_bulk; scalar_t__ dvb_ep_isoc_ts2; scalar_t__ dvb_ep_isoc; TYPE_5__* intf; scalar_t__ is_webcam; TYPE_4__ board; int /*<<< orphan*/  lock; scalar_t__ model; int /*<<< orphan*/  ts; scalar_t__ analog_ep_bulk; scalar_t__ analog_ep_isoc; int /*<<< orphan*/  usb_audio_type; int /*<<< orphan*/  name; } ;
struct TYPE_16__ {scalar_t__ type; } ;
struct TYPE_14__ {int bInterfaceNumber; scalar_t__ bInterfaceClass; int bNumEndpoints; } ;
struct TYPE_15__ {TYPE_6__ desc; } ;
struct TYPE_13__ {int /*<<< orphan*/  dev; } ;
struct TYPE_10__ {int bNumInterfaces; } ;
struct TYPE_11__ {struct usb_interface** interface; TYPE_2__ desc; } ;

/* Variables and functions */
 int EM28XX_MAXBOARDS ; 
 scalar_t__ EM28XX_NODECODER ; 
 scalar_t__ EM28XX_NOSENSOR ; 
 int /*<<< orphan*/  EM28XX_USB_AUDIO_CLASS ; 
 int /*<<< orphan*/  EM28XX_USB_AUDIO_VENDOR ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_8__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRIMARY_TS ; 
 int /*<<< orphan*/  SECONDARY_TS ; 
 scalar_t__ TUNER_ABSENT ; 
 scalar_t__ USB_CLASS_AUDIO ; 
#define  USB_SPEED_FULL 131 
#define  USB_SPEED_HIGH 130 
#define  USB_SPEED_LOW 129 
#define  USB_SPEED_UNKNOWN 128 
 scalar_t__* card ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ disable_usb_speed_check ; 
 unsigned int em28xx_bcount ; 
 int /*<<< orphan*/  FUNC4 (struct em28xx*,struct usb_device*,struct usb_interface*,int,int,int*,int*,int*) ; 
 int /*<<< orphan*/  em28xx_devused ; 
 scalar_t__ FUNC5 (struct em28xx*) ; 
 int FUNC6 (struct em28xx*,struct usb_device*,struct usb_interface*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct em28xx*,int,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_interface*) ; 
 struct em28xx* FUNC10 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct em28xx*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct em28xx* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct em28xx*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC20 (int,int /*<<< orphan*/ ) ; 
 struct usb_device* FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct usb_interface*,struct em28xx*) ; 
 scalar_t__ usb_xfer_mode ; 

__attribute__((used)) static int FUNC24(struct usb_interface *intf,
			    const struct usb_device_id *id)
{
	struct usb_device *udev;
	struct em28xx *dev = NULL;
	int retval;
	bool has_vendor_audio = false, has_video = false, has_dvb = false;
	int i, nr, try_bulk;
	const int ifnum = intf->altsetting[0].desc.bInterfaceNumber;
	char *speed;

	udev = FUNC21(FUNC9(intf));

	/* Check to see next free device and mark as used */
	do {
		nr = FUNC8(em28xx_devused, EM28XX_MAXBOARDS);
		if (nr >= EM28XX_MAXBOARDS) {
			/* No free device slots */
			FUNC2(&intf->dev,
				"Driver supports up to %i em28xx boards.\n",
			       EM28XX_MAXBOARDS);
			retval = -ENOMEM;
			goto err_no_slot;
		}
	} while (FUNC20(nr, em28xx_devused));

	/* Don't register audio interfaces */
	if (intf->altsetting[0].desc.bInterfaceClass == USB_CLASS_AUDIO) {
		FUNC3(&intf->dev,
			"audio device (%04x:%04x): interface %i, class %i\n",
			FUNC14(udev->descriptor.idVendor),
			FUNC14(udev->descriptor.idProduct),
			ifnum,
			intf->altsetting[0].desc.bInterfaceClass);

		retval = -ENODEV;
		goto err;
	}

	/* allocate memory for our device state and initialize it */
	dev = FUNC13(sizeof(*dev), GFP_KERNEL);
	if (!dev) {
		retval = -ENOMEM;
		goto err;
	}

	/* compute alternate max packet sizes */
	dev->alt_max_pkt_size_isoc = FUNC10(intf->num_altsetting,
					     sizeof(dev->alt_max_pkt_size_isoc[0]),
					     GFP_KERNEL);
	if (!dev->alt_max_pkt_size_isoc) {
		FUNC11(dev);
		retval = -ENOMEM;
		goto err;
	}

	/* Get endpoints */
	for (i = 0; i < intf->num_altsetting; i++) {
		int ep;

		for (ep = 0;
		     ep < intf->altsetting[i].desc.bNumEndpoints;
		     ep++)
			FUNC4(dev, udev, intf,
						    i, ep,
						    &has_vendor_audio,
						    &has_video,
						    &has_dvb);
	}

	if (!(has_vendor_audio || has_video || has_dvb)) {
		retval = -ENODEV;
		goto err_free;
	}

	switch (udev->speed) {
	case USB_SPEED_LOW:
		speed = "1.5";
		break;
	case USB_SPEED_UNKNOWN:
	case USB_SPEED_FULL:
		speed = "12";
		break;
	case USB_SPEED_HIGH:
		speed = "480";
		break;
	default:
		speed = "unknown";
	}

	FUNC3(&intf->dev,
		"New device %s %s @ %s Mbps (%04x:%04x, interface %d, class %d)\n",
		udev->manufacturer ? udev->manufacturer : "",
		udev->product ? udev->product : "",
		speed,
		FUNC14(udev->descriptor.idVendor),
		FUNC14(udev->descriptor.idProduct),
		ifnum,
		intf->altsetting->desc.bInterfaceNumber);

	/*
	 * Make sure we have 480 Mbps of bandwidth, otherwise things like
	 * video stream wouldn't likely work, since 12 Mbps is generally
	 * not enough even for most Digital TV streams.
	 */
	if (udev->speed != USB_SPEED_HIGH && disable_usb_speed_check == 0) {
		FUNC2(&intf->dev, "Device initialization failed.\n");
		FUNC2(&intf->dev,
			"Device must be connected to a high-speed USB 2.0 port.\n");
		retval = -ENODEV;
		goto err_free;
	}

	dev->devno = nr;
	dev->model = id->driver_info;
	dev->alt   = -1;
	dev->is_audio_only = has_vendor_audio && !(has_video || has_dvb);
	dev->has_video = has_video;
	dev->ifnum = ifnum;

	dev->ts = PRIMARY_TS;
	FUNC19(dev->name, 28, "em28xx");
	dev->dev_next = NULL;

	if (has_vendor_audio) {
		FUNC3(&intf->dev,
			"Audio interface %i found (Vendor Class)\n", ifnum);
		dev->usb_audio_type = EM28XX_USB_AUDIO_VENDOR;
	}
	/* Checks if audio is provided by a USB Audio Class intf */
	for (i = 0; i < udev->config->desc.bNumInterfaces; i++) {
		struct usb_interface *uif = udev->config->interface[i];

		if (uif->altsetting[0].desc.bInterfaceClass == USB_CLASS_AUDIO) {
			if (has_vendor_audio)
				FUNC2(&intf->dev,
					"em28xx: device seems to have vendor AND usb audio class interfaces !\n"
					"\t\tThe vendor interface will be ignored. Please contact the developers <linux-media@vger.kernel.org>\n");
			dev->usb_audio_type = EM28XX_USB_AUDIO_CLASS;
			break;
		}
	}

	if (has_video)
		FUNC3(&intf->dev, "Video interface %i found:%s%s\n",
			ifnum,
			dev->analog_ep_bulk ? " bulk" : "",
			dev->analog_ep_isoc ? " isoc" : "");
	if (has_dvb)
		FUNC3(&intf->dev, "DVB interface %i found:%s%s\n",
			ifnum,
			dev->dvb_ep_bulk ? " bulk" : "",
			dev->dvb_ep_isoc ? " isoc" : "");

	dev->num_alt = intf->num_altsetting;

	if ((unsigned int)card[nr] < em28xx_bcount)
		dev->model = card[nr];

	/* save our data pointer in this intf device */
	FUNC23(intf, dev);

	/* allocate device struct and check if the device is a webcam */
	FUNC17(&dev->lock);
	retval = FUNC6(dev, udev, intf, nr);
	if (retval)
		goto err_free;

	if (usb_xfer_mode < 0) {
		if (dev->is_webcam)
			try_bulk = 1;
		else
			try_bulk = 0;
	} else {
		try_bulk = usb_xfer_mode > 0;
	}

	/* Disable V4L2 if the device doesn't have a decoder or image sensor */
	if (has_video &&
	    dev->board.decoder == EM28XX_NODECODER &&
	    dev->em28xx_sensor == EM28XX_NOSENSOR) {
		FUNC2(&intf->dev,
			"Currently, V4L2 is not supported on this model\n");
		has_video = false;
		dev->has_video = false;
	}

	if (dev->board.has_dual_ts &&
	    (dev->tuner_type != TUNER_ABSENT || FUNC0(0)->type)) {
		/*
		 * The logic with sets alternate is not ready for dual-tuners
		 * which analog modes.
		 */
		FUNC2(&intf->dev,
			"We currently don't support analog TV or stream capture on dual tuners.\n");
		has_video = false;
	}

	/* Select USB transfer types to use */
	if (has_video) {
		if (!dev->analog_ep_isoc || (try_bulk && dev->analog_ep_bulk))
			dev->analog_xfer_bulk = 1;
		FUNC3(&intf->dev, "analog set to %s mode.\n",
			dev->analog_xfer_bulk ? "bulk" : "isoc");
	}
	if (has_dvb) {
		if (!dev->dvb_ep_isoc || (try_bulk && dev->dvb_ep_bulk))
			dev->dvb_xfer_bulk = 1;
		FUNC3(&intf->dev, "dvb set to %s mode.\n",
			dev->dvb_xfer_bulk ? "bulk" : "isoc");
	}

	if (dev->board.has_dual_ts && FUNC5(dev) == 0) {
		dev->dev_next->ts = SECONDARY_TS;
		dev->dev_next->alt   = -1;
		dev->dev_next->is_audio_only = has_vendor_audio &&
						!(has_video || has_dvb);
		dev->dev_next->has_video = false;
		dev->dev_next->ifnum = ifnum;
		dev->dev_next->model = id->driver_info;

		FUNC17(&dev->dev_next->lock);
		retval = FUNC6(dev->dev_next, udev, intf,
					 dev->dev_next->devno);
		if (retval)
			goto err_free;

		dev->dev_next->board.ir_codes = NULL; /* No IR for 2nd tuner */
		dev->dev_next->board.has_ir_i2c = 0; /* No IR for 2nd tuner */

		if (usb_xfer_mode < 0) {
			if (dev->dev_next->is_webcam)
				try_bulk = 1;
			else
				try_bulk = 0;
		} else {
			try_bulk = usb_xfer_mode > 0;
		}

		/* Select USB transfer types to use */
		if (has_dvb) {
			if (!dev->dvb_ep_isoc_ts2 ||
			    (try_bulk && dev->dvb_ep_bulk_ts2))
				dev->dev_next->dvb_xfer_bulk = 1;
			FUNC3(&dev->intf->dev, "dvb ts2 set to %s mode.\n",
				 dev->dev_next->dvb_xfer_bulk ? "bulk" : "isoc");
		}

		dev->dev_next->dvb_ep_isoc = dev->dvb_ep_isoc_ts2;
		dev->dev_next->dvb_ep_bulk = dev->dvb_ep_bulk_ts2;
		dev->dev_next->dvb_max_pkt_size_isoc = dev->dvb_max_pkt_size_isoc_ts2;
		dev->dev_next->dvb_alt_isoc = dev->dvb_alt_isoc;

		/* Configuare hardware to support TS2*/
		if (dev->dvb_xfer_bulk) {
			/* The ep4 and ep5 are configuared for BULK */
			FUNC7(dev, 0x0b, 0x96);
			FUNC15(100);
			FUNC7(dev, 0x0b, 0x80);
			FUNC15(100);
		} else {
			/* The ep4 and ep5 are configuared for ISO */
			FUNC7(dev, 0x0b, 0x96);
			FUNC15(100);
			FUNC7(dev, 0x0b, 0x82);
			FUNC15(100);
		}

		FUNC12(&dev->dev_next->ref);
	}

	FUNC12(&dev->ref);

	FUNC18(dev);

	/*
	 * Do it at the end, to reduce dynamic configuration changes during
	 * the device init. Yet, as request_modules() can be async, the
	 * topology will likely change after the load of the em28xx subdrivers.
	 */
#ifdef CONFIG_MEDIA_CONTROLLER
	retval = media_device_register(dev->media_dev);
#endif

	return 0;

err_free:
	FUNC11(dev->alt_max_pkt_size_isoc);
	FUNC11(dev);

err:
	FUNC1(nr, em28xx_devused);

err_no_slot:
	FUNC22(udev);
	return retval;
}