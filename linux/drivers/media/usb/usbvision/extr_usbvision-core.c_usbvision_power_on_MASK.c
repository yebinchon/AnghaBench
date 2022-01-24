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
struct usb_usbvision {size_t dev_model; int power; } ;
struct TYPE_2__ {scalar_t__ codec; } ;

/* Variables and functions */
 scalar_t__ CODEC_WEBCAM ; 
 int /*<<< orphan*/  DBG_FUNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int USBVISION_16_422_SYNC ; 
 int USBVISION_HVALID_PO ; 
 int USBVISION_KEEP_BLANK ; 
 int USBVISION_NOHVALID ; 
 int /*<<< orphan*/  USBVISION_PWR_REG ; 
 int USBVISION_PWR_VID ; 
 int USBVISION_RES2 ; 
 int USBVISION_SSPND_EN ; 
 int /*<<< orphan*/  USBVISION_VIN_REG1 ; 
 int /*<<< orphan*/  USBVISION_VIN_REG2 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* usbvision_device_data ; 
 int FUNC2 (struct usb_usbvision*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct usb_usbvision *usbvision)
{
	int err_code = 0;

	FUNC0(DBG_FUNC, "");

	FUNC2(usbvision, USBVISION_PWR_REG, USBVISION_SSPND_EN);
	FUNC2(usbvision, USBVISION_PWR_REG,
			USBVISION_SSPND_EN | USBVISION_RES2);

	if (usbvision_device_data[usbvision->dev_model].codec == CODEC_WEBCAM) {
		FUNC2(usbvision, USBVISION_VIN_REG1,
				USBVISION_16_422_SYNC | USBVISION_HVALID_PO);
		FUNC2(usbvision, USBVISION_VIN_REG2,
				USBVISION_NOHVALID | USBVISION_KEEP_BLANK);
	}
	FUNC2(usbvision, USBVISION_PWR_REG,
			USBVISION_SSPND_EN | USBVISION_PWR_VID);
	FUNC1(10);
	err_code = FUNC2(usbvision, USBVISION_PWR_REG,
			USBVISION_SSPND_EN | USBVISION_PWR_VID | USBVISION_RES2);
	if (err_code == 1)
		usbvision->power = 1;
	FUNC0(DBG_FUNC, "%s: err_code %d", (err_code < 0) ? "ERROR" : "power is on", err_code);
	return err_code;
}