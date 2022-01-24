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
struct usb_usbvision {size_t dev_model; } ;
struct TYPE_2__ {scalar_t__ codec; } ;

/* Variables and functions */
 scalar_t__ CODEC_WEBCAM ; 
 int /*<<< orphan*/  MAX_USB_HEIGHT ; 
 int /*<<< orphan*/  MAX_USB_WIDTH ; 
 int FUNC0 (struct usb_usbvision*) ; 
 TYPE_1__* usbvision_device_data ; 
 int /*<<< orphan*/  FUNC1 (struct usb_usbvision*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_usbvision*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_usbvision*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_usbvision*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_usbvision*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_usbvision*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_usbvision*,int) ; 

int FUNC8(struct usb_usbvision *usbvision, int format)
{
	if (usbvision_device_data[usbvision->dev_model].codec == CODEC_WEBCAM)
		FUNC1(usbvision);
	FUNC7(usbvision, format);
	FUNC4(usbvision);
	FUNC3(usbvision);
	FUNC5(usbvision);
	FUNC6(usbvision, MAX_USB_WIDTH, MAX_USB_HEIGHT);
	FUNC2(usbvision);

	/* cosas del PCM */
	return FUNC0(usbvision);
}