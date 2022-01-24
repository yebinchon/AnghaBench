#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct usb_interface {int dummy; } ;
struct usb_device_id {scalar_t__ driver_info; } ;
struct usb_device {int reset_resume; } ;
struct hif_device_usb {int /*<<< orphan*/  fw_done; struct usb_device_id const* usb_device_id; struct usb_interface* interface; struct usb_device* udev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ STORAGE_DEVICE ; 
 int FUNC0 (struct hif_device_usb*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC2 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (struct hif_device_usb*) ; 
 struct hif_device_usb* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_interface*,struct hif_device_usb*) ; 

__attribute__((used)) static int FUNC9(struct usb_interface *interface,
			       const struct usb_device_id *id)
{
	struct usb_device *udev = FUNC2(interface);
	struct hif_device_usb *hif_dev;
	int ret = 0;

	if (id->driver_info == STORAGE_DEVICE)
		return FUNC5(interface);

	hif_dev = FUNC4(sizeof(struct hif_device_usb), GFP_KERNEL);
	if (!hif_dev) {
		ret = -ENOMEM;
		goto err_alloc;
	}

	FUNC6(udev);

	hif_dev->udev = udev;
	hif_dev->interface = interface;
	hif_dev->usb_device_id = id;
#ifdef CONFIG_PM
	udev->reset_resume = 1;
#endif
	FUNC8(interface, hif_dev);

	FUNC1(&hif_dev->fw_done);

	ret = FUNC0(hif_dev, true);
	if (ret)
		goto err_fw_req;

	return ret;

err_fw_req:
	FUNC8(interface, NULL);
	FUNC3(hif_dev);
	FUNC7(udev);
err_alloc:
	return ret;
}