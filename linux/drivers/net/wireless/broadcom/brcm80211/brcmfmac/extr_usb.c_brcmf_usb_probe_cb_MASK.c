#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct brcmf_usbdev_info {struct device* dev; int /*<<< orphan*/  dev_init_done; int /*<<< orphan*/  settings; } ;
struct brcmf_usbdev {int /*<<< orphan*/  chiprev; int /*<<< orphan*/  devid; struct brcmf_fw_request* bus; } ;
struct TYPE_2__ {struct brcmf_usbdev* usb; } ;
struct brcmf_fw_request {int always_use_fws_queue; int wowl_supported; int /*<<< orphan*/  chiprev; int /*<<< orphan*/  chip; struct device* dev; int /*<<< orphan*/  proto_type; int /*<<< orphan*/ * ops; TYPE_1__ bus_priv; } ;
struct brcmf_bus {int always_use_fws_queue; int wowl_supported; int /*<<< orphan*/  chiprev; int /*<<< orphan*/  chip; struct device* dev; int /*<<< orphan*/  proto_type; int /*<<< orphan*/ * ops; TYPE_1__ bus_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_BUSTYPE_USB ; 
 int /*<<< orphan*/  BRCMF_PROTO_BCDC ; 
 int /*<<< orphan*/  BRCMF_USB_NRXQ ; 
 int /*<<< orphan*/  BRCMF_USB_NTXQ ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  USB ; 
 int FUNC0 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int FUNC5 (struct device*,struct brcmf_fw_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct brcmf_usbdev* FUNC7 (struct brcmf_usbdev_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  brcmf_usb_bus_ops ; 
 int /*<<< orphan*/  FUNC8 (struct brcmf_usbdev_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct brcmf_usbdev_info*) ; 
 struct brcmf_fw_request* FUNC10 (struct brcmf_usbdev_info*) ; 
 int /*<<< orphan*/  brcmf_usb_probe_phase2 ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct device*,struct brcmf_fw_request*) ; 
 int /*<<< orphan*/  FUNC13 (struct brcmf_fw_request*) ; 
 struct brcmf_fw_request* FUNC14 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct brcmf_usbdev_info *devinfo)
{
	struct brcmf_bus *bus = NULL;
	struct brcmf_usbdev *bus_pub = NULL;
	struct device *dev = devinfo->dev;
	struct brcmf_fw_request *fwreq;
	int ret;

	FUNC2(USB, "Enter\n");
	bus_pub = FUNC7(devinfo, BRCMF_USB_NRXQ, BRCMF_USB_NTXQ);
	if (!bus_pub)
		return -ENODEV;

	bus = FUNC14(sizeof(struct brcmf_bus), GFP_ATOMIC);
	if (!bus) {
		ret = -ENOMEM;
		goto fail;
	}

	bus->dev = dev;
	bus_pub->bus = bus;
	bus->bus_priv.usb = bus_pub;
	FUNC12(dev, bus);
	bus->ops = &brcmf_usb_bus_ops;
	bus->proto_type = BRCMF_PROTO_BCDC;
	bus->always_use_fws_queue = true;
#ifdef CONFIG_PM
	bus->wowl_supported = true;
#endif

	devinfo->settings = FUNC6(bus->dev, BRCMF_BUSTYPE_USB,
						   bus_pub->devid,
						   bus_pub->chiprev);
	if (!devinfo->settings) {
		ret = -ENOMEM;
		goto fail;
	}

	if (!FUNC9(devinfo)) {
		ret = FUNC0(devinfo->dev, devinfo->settings);
		if (ret)
			goto fail;
		ret = FUNC1(devinfo->dev);
		if (ret)
			goto fail;
		/* we are done */
		FUNC11(&devinfo->dev_init_done);
		return 0;
	}
	bus->chip = bus_pub->devid;
	bus->chiprev = bus_pub->chiprev;

	fwreq = FUNC10(devinfo);
	if (!fwreq) {
		ret = -ENOMEM;
		goto fail;
	}

	/* request firmware here */
	ret = FUNC5(dev, fwreq, brcmf_usb_probe_phase2);
	if (ret) {
		FUNC3("firmware request failed: %d\n", ret);
		FUNC13(fwreq);
		goto fail;
	}

	return 0;

fail:
	/* Release resources in reverse order */
	FUNC4(devinfo->dev);
	FUNC13(bus);
	FUNC8(devinfo);
	return ret;
}