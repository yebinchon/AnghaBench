#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int /*<<< orphan*/  dev; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_8__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {scalar_t__ bEndpointAddress; } ;
struct usb_device_id {int idProduct; } ;
struct s2255_vc {int idx; int /*<<< orphan*/  vb_lock; int /*<<< orphan*/  qlock; int /*<<< orphan*/  wait_vidstatus; int /*<<< orphan*/  wait_setmode; struct s2255_dev* dev; } ;
struct s2255_fw {int dummy; } ;
struct s2255_dev {int pid; int dsp_fw_ver; struct s2255_dev* cmdbuf; int /*<<< orphan*/  lock; struct s2255_dev* fw_data; TYPE_3__* udev; int /*<<< orphan*/  timer; int /*<<< orphan*/  fw_urb; struct s2255_dev* pfw_data; TYPE_6__* fw; struct s2255_vc* vc; int /*<<< orphan*/  wait_fw; scalar_t__ read_endpoint; struct usb_interface* interface; int /*<<< orphan*/  cmdlock; int /*<<< orphan*/  num_channels; } ;
typedef  scalar_t__ __le32 ;
struct TYPE_11__ {int size; int /*<<< orphan*/ * data; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;
struct TYPE_9__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 int CHUNK_SIZE ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FIRMWARE_FILE_NAME ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_CHANNELS ; 
 int S2255_CMDBUF_SIZE ; 
 int S2255_CUR_DSP_FWVER ; 
 scalar_t__ S2255_FW_MARKER ; 
 int S2255_MIN_DSP_COLORFILTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC7 (struct s2255_dev*) ; 
 void* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_6__*) ; 
 scalar_t__ FUNC15 (TYPE_6__**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC16 (struct s2255_dev*) ; 
 int /*<<< orphan*/  FUNC17 (struct s2255_dev*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC19 (struct s2255_dev*) ; 
 int FUNC20 (struct s2255_dev*) ; 
 int /*<<< orphan*/  s2255_timer ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC29(struct usb_interface *interface,
		       const struct usb_device_id *id)
{
	struct s2255_dev *dev = NULL;
	struct usb_host_interface *iface_desc;
	struct usb_endpoint_descriptor *endpoint;
	int i;
	int retval = -ENOMEM;
	__le32 *pdata;
	int fw_size;

	/* allocate memory for our device state and initialize it to zero */
	dev = FUNC8(sizeof(struct s2255_dev), GFP_KERNEL);
	if (dev == NULL) {
		FUNC18(&interface->dev, "out of memory\n");
		return -ENOMEM;
	}

	dev->cmdbuf = FUNC8(S2255_CMDBUF_SIZE, GFP_KERNEL);
	if (dev->cmdbuf == NULL) {
		FUNC18(&interface->dev, "out of memory\n");
		goto errorFWDATA1;
	}

	FUNC0(&dev->num_channels, 0);
	dev->pid = id->idProduct;
	dev->fw_data = FUNC8(sizeof(struct s2255_fw), GFP_KERNEL);
	if (!dev->fw_data)
		goto errorFWDATA1;
	FUNC11(&dev->lock);
	FUNC11(&dev->cmdlock);
	/* grab usb_device and save it */
	dev->udev = FUNC26(FUNC6(interface));
	if (dev->udev == NULL) {
		FUNC3(&interface->dev, "null usb device\n");
		retval = -ENODEV;
		goto errorUDEV;
	}
	FUNC2(&interface->dev, "dev: %p, udev %p interface %p\n",
		dev, dev->udev, interface);
	dev->interface = interface;
	/* set up the endpoint information  */
	iface_desc = interface->cur_altsetting;
	FUNC2(&interface->dev, "num EP: %d\n",
		iface_desc->desc.bNumEndpoints);
	for (i = 0; i < iface_desc->desc.bNumEndpoints; ++i) {
		endpoint = &iface_desc->endpoint[i].desc;
		if (!dev->read_endpoint && FUNC24(endpoint)) {
			/* we found the bulk in endpoint */
			dev->read_endpoint = endpoint->bEndpointAddress;
		}
	}

	if (!dev->read_endpoint) {
		FUNC3(&interface->dev, "Could not find bulk-in endpoint\n");
		goto errorEP;
	}
	FUNC22(&dev->timer, s2255_timer, 0);
	FUNC5(&dev->fw_data->wait_fw);
	for (i = 0; i < MAX_CHANNELS; i++) {
		struct s2255_vc *vc = &dev->vc[i];
		vc->idx = i;
		vc->dev = dev;
		FUNC5(&vc->wait_setmode);
		FUNC5(&vc->wait_vidstatus);
		FUNC21(&vc->qlock);
		FUNC11(&vc->vb_lock);
	}

	dev->fw_data->fw_urb = FUNC23(0, GFP_KERNEL);
	if (!dev->fw_data->fw_urb)
		goto errorFWURB;

	dev->fw_data->pfw_data = FUNC8(CHUNK_SIZE, GFP_KERNEL);
	if (!dev->fw_data->pfw_data) {
		FUNC3(&interface->dev, "out of memory!\n");
		goto errorFWDATA2;
	}
	/* load the first chunk */
	if (FUNC15(&dev->fw_data->fw,
			     FIRMWARE_FILE_NAME, &dev->udev->dev)) {
		FUNC3(&interface->dev, "sensoray 2255 failed to get firmware\n");
		goto errorREQFW;
	}
	/* check the firmware is valid */
	fw_size = dev->fw_data->fw->size;
	pdata = (__le32 *) &dev->fw_data->fw->data[fw_size - 8];

	if (*pdata != S2255_FW_MARKER) {
		FUNC3(&interface->dev, "Firmware invalid.\n");
		retval = -ENODEV;
		goto errorFWMARKER;
	} else {
		/* make sure firmware is the latest */
		__le32 *pRel;
		pRel = (__le32 *) &dev->fw_data->fw->data[fw_size - 4];
		FUNC12("s2255 dsp fw version %x\n", FUNC9(*pRel));
		dev->dsp_fw_ver = FUNC9(*pRel);
		if (dev->dsp_fw_ver < S2255_CUR_DSP_FWVER)
			FUNC12("s2255: f2255usb.bin out of date.\n");
		if (dev->pid == 0x2257 &&
				dev->dsp_fw_ver < S2255_MIN_DSP_COLORFILTER)
			FUNC13("2257 needs firmware %d or above.\n",
				S2255_MIN_DSP_COLORFILTER);
	}
	FUNC28(dev->udev);
	/* load 2255 board specific */
	retval = FUNC16(dev);
	if (retval)
		goto errorBOARDINIT;
	FUNC19(dev);
	/* loads v4l specific */
	retval = FUNC20(dev);
	if (retval)
		goto errorBOARDINIT;
	FUNC4(&interface->dev, "Sensoray 2255 detected\n");
	return 0;
errorBOARDINIT:
	FUNC17(dev);
errorFWMARKER:
	FUNC14(dev->fw_data->fw);
errorREQFW:
	FUNC7(dev->fw_data->pfw_data);
errorFWDATA2:
	FUNC25(dev->fw_data->fw_urb);
errorFWURB:
	FUNC1(&dev->timer);
errorEP:
	FUNC27(dev->udev);
errorUDEV:
	FUNC7(dev->fw_data);
	FUNC10(&dev->lock);
errorFWDATA1:
	FUNC7(dev->cmdbuf);
	FUNC7(dev);
	FUNC13("Sensoray 2255 driver load failed: 0x%x\n", retval);
	return retval;
}