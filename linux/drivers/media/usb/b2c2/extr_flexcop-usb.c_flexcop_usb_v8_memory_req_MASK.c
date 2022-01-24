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
typedef  int u32 ;
typedef  int u16 ;
struct flexcop_usb {int* data; int /*<<< orphan*/  data_mutex; int /*<<< orphan*/  udev; } ;
typedef  int /*<<< orphan*/  flexcop_usb_request_t ;

/* Variables and functions */
 int B2C2_USB_CTRL_PIPE_IN ; 
 int B2C2_USB_CTRL_PIPE_OUT ; 
#define  B2C2_USB_FLASH_BLOCK 130 
#define  B2C2_USB_READ_V8_MEM 129 
#define  B2C2_USB_WRITE_V8_MEM 128 
 int B2C2_WAIT_FOR_OPERATION_V8FLASH ; 
 int B2C2_WAIT_FOR_OPERATION_V8READ ; 
 int B2C2_WAIT_FOR_OPERATION_V8WRITE ; 
 int EINVAL ; 
 int EIO ; 
 int HZ ; 
 int USB_DIR_IN ; 
 int USB_DIR_OUT ; 
 int USB_ENDPOINT_DIR_MASK ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int,int /*<<< orphan*/  (*) (char*,int,int /*<<< orphan*/ ,int,int,int)) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int,int,int*,int,int) ; 

__attribute__((used)) static int FUNC8(struct flexcop_usb *fc_usb,
		flexcop_usb_request_t req, u8 page, u16 wAddress,
		u8 *pbBuffer, u32 buflen)
{
	u8 request_type = USB_TYPE_VENDOR;
	u16 wIndex;
	int nWaitTime, pipe, ret;
	wIndex = page << 8;

	if (buflen > sizeof(fc_usb->data)) {
		FUNC3("Buffer size bigger than max URB control message\n");
		return -EIO;
	}

	switch (req) {
	case B2C2_USB_READ_V8_MEM:
		nWaitTime = B2C2_WAIT_FOR_OPERATION_V8READ;
		request_type |= USB_DIR_IN;
		pipe = B2C2_USB_CTRL_PIPE_IN;
		break;
	case B2C2_USB_WRITE_V8_MEM:
		wIndex |= pbBuffer[0];
		request_type |= USB_DIR_OUT;
		nWaitTime = B2C2_WAIT_FOR_OPERATION_V8WRITE;
		pipe = B2C2_USB_CTRL_PIPE_OUT;
		break;
	case B2C2_USB_FLASH_BLOCK:
		request_type |= USB_DIR_OUT;
		nWaitTime = B2C2_WAIT_FOR_OPERATION_V8FLASH;
		pipe = B2C2_USB_CTRL_PIPE_OUT;
		break;
	default:
		FUNC0("unsupported request for v8_mem_req %x.\n", req);
		return -EINVAL;
	}
	FUNC1("v8mem: %02x %02x %04x %04x, len: %d\n", request_type, req,
			wAddress, wIndex, buflen);

	FUNC5(&fc_usb->data_mutex);

	if ((request_type & USB_ENDPOINT_DIR_MASK) == USB_DIR_OUT)
		FUNC4(fc_usb->data, pbBuffer, buflen);

	ret = FUNC7(fc_usb->udev, pipe,
			req,
			request_type,
			wAddress,
			wIndex,
			fc_usb->data,
			buflen,
			nWaitTime * HZ);
	if (ret != buflen)
		ret = -EIO;

	if (ret >= 0) {
		ret = 0;
		if ((request_type & USB_ENDPOINT_DIR_MASK) == USB_DIR_IN)
			FUNC4(pbBuffer, fc_usb->data, buflen);
	}

	FUNC6(&fc_usb->data_mutex);

	FUNC2(pbBuffer, ret, deb_v8);
	return ret;
}