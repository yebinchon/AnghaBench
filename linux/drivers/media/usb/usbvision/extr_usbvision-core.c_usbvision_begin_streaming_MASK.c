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
struct usb_usbvision {scalar_t__ isoc_mode; int vin_reg2_preset; } ;

/* Variables and functions */
 scalar_t__ ISOC_MODE_COMPRESS ; 
 int USBVISION_NOHVALID ; 
 int /*<<< orphan*/  USBVISION_VIN_REG2 ; 
 int /*<<< orphan*/  FUNC0 (struct usb_usbvision*) ; 
 int FUNC1 (struct usb_usbvision*,int /*<<< orphan*/ ,int) ; 

int FUNC2(struct usb_usbvision *usbvision)
{
	if (usbvision->isoc_mode == ISOC_MODE_COMPRESS)
		FUNC0(usbvision);
	return FUNC1(usbvision, USBVISION_VIN_REG2,
		USBVISION_NOHVALID | usbvision->vin_reg2_preset);
}