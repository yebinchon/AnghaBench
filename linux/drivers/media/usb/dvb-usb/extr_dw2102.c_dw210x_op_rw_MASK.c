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
typedef  int /*<<< orphan*/  u16 ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 int DW210X_READ_MSG ; 
 int DW210X_WRITE_MSG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int USB_DIR_IN ; 
 int USB_DIR_OUT ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct usb_device*,unsigned int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC4 (struct usb_device*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct usb_device *dev, u8 request, u16 value,
			u16 index, u8 * data, u16 len, int flags)
{
	int ret;
	u8 *u8buf;
	unsigned int pipe = (flags == DW210X_READ_MSG) ?
				FUNC4(dev, 0) : FUNC5(dev, 0);
	u8 request_type = (flags == DW210X_READ_MSG) ? USB_DIR_IN : USB_DIR_OUT;

	u8buf = FUNC1(len, GFP_KERNEL);
	if (!u8buf)
		return -ENOMEM;


	if (flags == DW210X_WRITE_MSG)
		FUNC2(u8buf, data, len);
	ret = FUNC3(dev, pipe, request, request_type | USB_TYPE_VENDOR,
				value, index , u8buf, len, 2000);

	if (flags == DW210X_READ_MSG)
		FUNC2(data, u8buf, len);

	FUNC0(u8buf);
	return ret;
}