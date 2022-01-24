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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct flexcop_usb {int /*<<< orphan*/  data_mutex; int /*<<< orphan*/ * data; int /*<<< orphan*/  udev; } ;
struct flexcop_device {struct flexcop_usb* bus_specific; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  B2C2_USB_CTRL_PIPE_IN ; 
 int /*<<< orphan*/  B2C2_USB_CTRL_PIPE_OUT ; 
 int B2C2_USB_READ_REG ; 
 int B2C2_USB_WRITE_REG ; 
 int B2C2_WAIT_FOR_OPERATION_RDW ; 
 int EIO ; 
 int HZ ; 
 int USB_DIR_IN ; 
 int USB_DIR_OUT ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC6(struct flexcop_device *fc, u16 wRegOffsPCI, u32 *val, u8 read)
{
	struct flexcop_usb *fc_usb = fc->bus_specific;
	u8 request = read ? B2C2_USB_READ_REG : B2C2_USB_WRITE_REG;
	u8 request_type = (read ? USB_DIR_IN : USB_DIR_OUT) | USB_TYPE_VENDOR;
	u8 wAddress = FUNC0(wRegOffsPCI) |
		(read ? 0x80 : 0);
	int ret;

	FUNC3(&fc_usb->data_mutex);
	if (!read)
		FUNC2(fc_usb->data, val, sizeof(*val));

	ret = FUNC5(fc_usb->udev,
			read ? B2C2_USB_CTRL_PIPE_IN : B2C2_USB_CTRL_PIPE_OUT,
			request,
			request_type, /* 0xc0 read or 0x40 write */
			wAddress,
			0,
			fc_usb->data,
			sizeof(u32),
			B2C2_WAIT_FOR_OPERATION_RDW * HZ);

	if (ret != sizeof(u32)) {
		FUNC1("error while %s dword from %d (%d).", read ? "reading" :
				"writing", wAddress, wRegOffsPCI);
		if (ret >= 0)
			ret = -EIO;
	}

	if (read && ret >= 0)
		FUNC2(val, fc_usb->data, sizeof(*val));
	FUNC4(&fc_usb->data_mutex);

	return ret;
}