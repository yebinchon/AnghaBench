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
struct gspca_dev {scalar_t__ usb_err; scalar_t__* usb_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_USBO ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int /*<<< orphan*/ ,char*,int,int const,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*,int,int const,int) ; 

__attribute__((used)) static void FUNC5(struct gspca_dev *gspca_dev,
			u8 reg, const u8 *val,
			u8 size)		/* 1 or 2 */
{
	int retry;

	if (gspca_dev->usb_err < 0)
		return;
	if (size == 1)
		FUNC0(gspca_dev, D_USBO, "i2c_w %02x %02x\n", reg, *val);
	else
		FUNC0(gspca_dev, D_USBO, "i2c_w %02x %02x%02x\n",
			  reg, *val, val[1]);
	FUNC3(gspca_dev, 0xa1, 0xb33f, 1);
/*fixme:should check if (!(gspca_dev->usb_buf[0] & 0x02)) error*/
	FUNC4(gspca_dev, 0xa0, size, 0xb334);
	FUNC4(gspca_dev, 0xa0, reg, 0xb33a);
	FUNC4(gspca_dev, 0xa0, val[0], 0xb336);
	if (size > 1)
		FUNC4(gspca_dev, 0xa0, val[1], 0xb337);
	FUNC4(gspca_dev, 0xa0, 0x01, 0xb339);
	retry = 4;
	do {
		FUNC3(gspca_dev, 0xa1, 0xb33b, 1);
		if (gspca_dev->usb_buf[0] == 0)
			break;
		FUNC1(20);
	} while (--retry > 0);
	if (retry <= 0)
		FUNC2("i2c_write timeout\n");
}