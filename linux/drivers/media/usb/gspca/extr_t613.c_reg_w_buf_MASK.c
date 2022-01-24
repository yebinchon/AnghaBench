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
typedef  scalar_t__ u16 ;
struct gspca_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/ * usb_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ USB_BUF_SZ ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct gspca_dev *gspca_dev,
		  const u8 *buffer, u16 len)
{
	if (len <= USB_BUF_SZ) {
		FUNC2(gspca_dev->usb_buf, buffer, len);
		FUNC4(gspca_dev->dev,
				FUNC5(gspca_dev->dev, 0),
				0,
			   USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
				0x01, 0,
				gspca_dev->usb_buf, len, 500);
	} else {
		u8 *tmpbuf;

		tmpbuf = FUNC1(buffer, len, GFP_KERNEL);
		if (!tmpbuf) {
			FUNC3("Out of memory\n");
			return;
		}
		FUNC4(gspca_dev->dev,
				FUNC5(gspca_dev->dev, 0),
				0,
			   USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
				0x01, 0,
				tmpbuf, len, 500);
		FUNC0(tmpbuf);
	}
}