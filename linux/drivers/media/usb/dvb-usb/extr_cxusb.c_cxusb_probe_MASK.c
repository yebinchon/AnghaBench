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
struct usb_device_id {int dummy; } ;
struct dvb_usb_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (struct dvb_usb_device*,int) ; 
 int /*<<< orphan*/  adapter_nr ; 
 int /*<<< orphan*/  cxusb_aver_a868r_properties ; 
 int /*<<< orphan*/  cxusb_bluebird_dee1601_properties ; 
 int /*<<< orphan*/  cxusb_bluebird_dtt7579_properties ; 
 int /*<<< orphan*/  cxusb_bluebird_dualdig4_properties ; 
 int /*<<< orphan*/  cxusb_bluebird_dualdig4_rev2_properties ; 
 int /*<<< orphan*/  cxusb_bluebird_lgh064f_properties ; 
 int /*<<< orphan*/  cxusb_bluebird_lgz201_properties ; 
 int /*<<< orphan*/  cxusb_bluebird_nano2_needsfirmware_properties ; 
 int /*<<< orphan*/  cxusb_bluebird_nano2_properties ; 
 int /*<<< orphan*/  cxusb_d680_dmb_properties ; 
 int /*<<< orphan*/  FUNC1 (struct usb_interface*) ; 
 int /*<<< orphan*/  cxusb_medion_properties ; 
 int /*<<< orphan*/  FUNC2 (struct dvb_usb_device*) ; 
 int FUNC3 (struct dvb_usb_device*) ; 
 int FUNC4 (struct dvb_usb_device*,int) ; 
 int /*<<< orphan*/  cxusb_mygica_d689_properties ; 
 int /*<<< orphan*/  FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_interface*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct dvb_usb_device**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct usb_interface *intf,
		       const struct usb_device_id *id)
{
	struct dvb_usb_device *dvbdev;
	int ret;

	/* Medion 95700 */
	if (!FUNC6(intf, &cxusb_medion_properties,
				 THIS_MODULE, &dvbdev, adapter_nr)) {
		if (!FUNC1(intf)) {
			ret = -ENODEV;
			goto ret_uninit;
		}

		FUNC0(dvbdev, 1);
		ret = FUNC4(dvbdev, false);
		if (ret)
			goto ret_uninit;

		ret = FUNC3(dvbdev);

		FUNC4(dvbdev, true);
		FUNC0(dvbdev, 0);

		if (ret != 0)
			goto ret_uninit;

		/* release device from INIT mode to normal operation */
		FUNC2(dvbdev);

		return 0;
	} else if (!FUNC6(intf,
					&cxusb_bluebird_lgh064f_properties,
					THIS_MODULE, NULL, adapter_nr) ||
		   !FUNC6(intf,
					&cxusb_bluebird_dee1601_properties,
					THIS_MODULE, NULL, adapter_nr) ||
		   !FUNC6(intf,
					&cxusb_bluebird_lgz201_properties,
					THIS_MODULE, NULL, adapter_nr) ||
		   !FUNC6(intf,
					&cxusb_bluebird_dtt7579_properties,
					THIS_MODULE, NULL, adapter_nr) ||
		   !FUNC6(intf,
					&cxusb_bluebird_dualdig4_properties,
					THIS_MODULE, NULL, adapter_nr) ||
		   !FUNC6(intf,
					&cxusb_bluebird_nano2_properties,
					THIS_MODULE, NULL, adapter_nr) ||
		   !FUNC6(intf,
					&cxusb_bluebird_nano2_needsfirmware_properties,
					THIS_MODULE, NULL, adapter_nr) ||
		   !FUNC6(intf, &cxusb_aver_a868r_properties,
					THIS_MODULE, NULL, adapter_nr) ||
		   !FUNC6(intf,
					&cxusb_bluebird_dualdig4_rev2_properties,
					THIS_MODULE, NULL, adapter_nr) ||
		   !FUNC6(intf, &cxusb_d680_dmb_properties,
					THIS_MODULE, NULL, adapter_nr) ||
		   !FUNC6(intf, &cxusb_mygica_d689_properties,
					THIS_MODULE, NULL, adapter_nr) ||
		   0)
		return 0;

	return -EINVAL;

ret_uninit:
	FUNC5(intf);

	return ret;
}