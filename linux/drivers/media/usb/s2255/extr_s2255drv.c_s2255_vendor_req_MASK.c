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
typedef  int /*<<< orphan*/  u16 ;
struct s2255_dev {int /*<<< orphan*/  udev; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 long ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int USB_DIR_IN ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,void*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static long FUNC6(struct s2255_dev *dev, unsigned char Request,
			     u16 Index, u16 Value, void *TransferBuffer,
			     s32 TransferBufferLength, int bOut)
{
	int r;
	unsigned char *buf;

	buf = FUNC1(TransferBufferLength, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	if (!bOut) {
		r = FUNC3(dev->udev, FUNC4(dev->udev, 0),
				    Request,
				    USB_TYPE_VENDOR | USB_RECIP_DEVICE |
				    USB_DIR_IN,
				    Value, Index, buf,
				    TransferBufferLength, HZ * 5);

		if (r >= 0)
			FUNC2(TransferBuffer, buf, TransferBufferLength);
	} else {
		FUNC2(buf, TransferBuffer, TransferBufferLength);
		r = FUNC3(dev->udev, FUNC5(dev->udev, 0),
				    Request, USB_TYPE_VENDOR | USB_RECIP_DEVICE,
				    Value, Index, buf,
				    TransferBufferLength, HZ * 5);
	}
	FUNC0(buf);
	return r;
}