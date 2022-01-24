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
struct usb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_CTRL_GET_TIMEOUT ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int FUNC0 (struct usb_device*,int /*<<< orphan*/ ,int,int,int,int,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(struct usb_device *udev, int blockno,
					 void *block, int size)
{
	return FUNC0(udev, FUNC1(udev, 0), 0x0e,
			       USB_TYPE_VENDOR | USB_DIR_OUT | USB_RECIP_DEVICE,
			       0x0802, blockno, block, size,
			       USB_CTRL_GET_TIMEOUT);
}