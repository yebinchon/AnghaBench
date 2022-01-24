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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct ath6kl_usb {int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int USB_DIR_IN ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ath6kl_usb *ar_usb,
				  u8 req, u16 value, u16 index, void *data,
				  u32 size)
{
	u8 *buf = NULL;
	int ret;

	if (size > 0) {
		buf = FUNC2(size, GFP_KERNEL);
		if (buf == NULL)
			return -ENOMEM;
	}

	/* note: if successful returns number of bytes transfered */
	ret = FUNC4(ar_usb->udev,
				 FUNC5(ar_usb->udev, 0),
				 req,
				 USB_DIR_IN | USB_TYPE_VENDOR |
				 USB_RECIP_DEVICE, value, index, buf,
				 size, 2 * HZ);

	if (ret < 0) {
		FUNC0("Failed to read usb control message: %d\n", ret);
		FUNC1(buf);
		return ret;
	}

	FUNC3((u8 *) data, buf, size);

	FUNC1(buf);

	return 0;
}