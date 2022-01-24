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
struct dsbr100_device {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  v4l2_lock; int /*<<< orphan*/  videodev; int /*<<< orphan*/  transfer_buffer; int /*<<< orphan*/  usbdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSB100_ONOFF ; 
 int USB_DIR_IN ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int,int) ; 
 struct dsbr100_device* FUNC3 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct usb_interface *intf)
{
	struct dsbr100_device *radio = FUNC3(intf);

	FUNC0(&radio->v4l2_lock);
	/*
	 * Disconnect is also called on unload, and in that case we need to
	 * mute the device. This call will silently fail if it is called
	 * after a physical disconnect.
	 */
	FUNC2(radio->usbdev,
		FUNC4(radio->usbdev, 0),
		DSB100_ONOFF,
		USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_IN,
		0x00, 0x00, radio->transfer_buffer, 8, 300);
	FUNC5(intf, NULL);
	FUNC8(&radio->videodev);
	FUNC6(&radio->v4l2_dev);
	FUNC1(&radio->v4l2_lock);
	FUNC7(&radio->v4l2_dev);
}