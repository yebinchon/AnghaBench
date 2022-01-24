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
typedef  int u8 ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  USB_CTRL_GET_TIMEOUT ; 
 int USB_DIR_IN ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct usb_device*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC4(struct usb_device *udev, u8 cmd)
{
	u8 *stat_buf;
	int ret;

	stat_buf = FUNC1(40, GFP_NOIO);
	if (!stat_buf)
		return -ENOMEM;

	ret = FUNC2(udev, FUNC3(udev, 0), 0x22,
			USB_TYPE_VENDOR | USB_DIR_IN |
			USB_RECIP_INTERFACE, cmd, 0, stat_buf,
			40, USB_CTRL_GET_TIMEOUT);
	if (ret >= 0)
		ret = stat_buf[5];
	FUNC0(stat_buf);

	return ret;
}