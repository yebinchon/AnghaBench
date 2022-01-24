#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_3__ {int bNumConfigurations; int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct usb_device {int /*<<< orphan*/  dev; TYPE_1__ descriptor; } ;
struct firmware {int dummy; } ;
struct TYPE_4__ {char* fw_name1; scalar_t__ vendor; scalar_t__ product; char* fw_name2; } ;

/* Variables and functions */
 int /*<<< orphan*/  CYPRESS_FX2 ; 
 int ENODEV ; 
 int FUNC0 (struct usb_device*,struct firmware const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 
 TYPE_2__* fw_configs ; 
 int /*<<< orphan*/  FUNC3 (struct usb_interface*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct firmware const*) ; 
 scalar_t__ FUNC6 (struct firmware const**,char const*,int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_device*) ; 

__attribute__((used)) static int FUNC9(struct usb_interface *interface,
				const struct usb_device_id *id)
{
	struct usb_device *usbdev;
	const struct firmware *fw;
	u16 vendor, product;
	const char *fw1, *fw2;
	int ret;
	int i;

	usbdev = FUNC7(FUNC3(interface));
	if (!usbdev)
		goto failed2;

	if (usbdev->descriptor.bNumConfigurations != 1) {
		FUNC1(&interface->dev, "can't handle multiple config\n");
		goto failed2;
	}

	vendor = FUNC4(usbdev->descriptor.idVendor);
	product = FUNC4(usbdev->descriptor.idProduct);

	for (i = 0; fw_configs[i].fw_name1; i++)
		if (fw_configs[i].vendor == vendor &&
		    fw_configs[i].product == product)
			break;

	/* Should never happen */
	if (fw_configs[i].fw_name1 == NULL)
		goto failed2;

	fw1 = fw_configs[i].fw_name1;
	fw2 = fw_configs[i].fw_name2;

	FUNC2(&interface->dev, "loading firmware %s\n", fw1);

	if (FUNC6(&fw, fw1, &usbdev->dev)) {
		FUNC1(&interface->dev,
			"unable to load firmware from file \"%s\"\n", fw1);
		goto failed2;
	}
	ret = FUNC0(usbdev, fw, CYPRESS_FX2);
	FUNC5(fw);
	if (0 != ret) {
		FUNC1(&interface->dev, "loader download failed\n");
		goto failed2;
	}

	if (fw2 == NULL)
		return 0;

	if (FUNC6(&fw, fw2, &usbdev->dev)) {
		FUNC1(&interface->dev,
			"unable to load firmware from file \"%s\"\n", fw2);
		goto failed2;
	}
	ret = FUNC0(usbdev, fw, CYPRESS_FX2);
	FUNC5(fw);
	if (0 != ret) {
		FUNC1(&interface->dev, "firmware download failed\n");
		goto failed2;
	}
	return 0;

failed2:
	FUNC8(usbdev);
	FUNC1(&interface->dev, "probe failed\n");
	return -ENODEV;
}