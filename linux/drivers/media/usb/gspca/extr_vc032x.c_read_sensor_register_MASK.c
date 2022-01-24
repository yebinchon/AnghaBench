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
typedef  int u16 ;
struct gspca_dev {int* usb_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_PROBE ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*,int,int,int) ; 

__attribute__((used)) static u16 FUNC5(struct gspca_dev *gspca_dev,
				u16 address)
{
	u8 ldata, mdata, hdata;
	int retry = 50;

	FUNC3(gspca_dev, 0xa1, 0xb33f, 1);
	if (!(gspca_dev->usb_buf[0] & 0x02)) {
		FUNC2("I2c Bus Busy Wait %02x\n", gspca_dev->usb_buf[0]);
		return 0;
	}
	FUNC4(gspca_dev, 0xa0, address, 0xb33a);
	FUNC4(gspca_dev, 0xa0, 0x02, 0xb339);

	do {
		FUNC3(gspca_dev, 0xa1, 0xb33b, 1);
		if (gspca_dev->usb_buf[0] == 0x00)
			break;
		FUNC1(40);
	} while (--retry >= 0);

	FUNC3(gspca_dev, 0xa1, 0xb33e, 1);
	ldata = gspca_dev->usb_buf[0];
	FUNC3(gspca_dev, 0xa1, 0xb33d, 1);
	mdata = gspca_dev->usb_buf[0];
	FUNC3(gspca_dev, 0xa1, 0xb33c, 1);
	hdata = gspca_dev->usb_buf[0];
	if (hdata != 0 && mdata != 0 && ldata != 0)
		FUNC0(gspca_dev, D_PROBE, "Read Sensor %02x%02x %02x\n",
			  hdata, mdata, ldata);
	FUNC3(gspca_dev, 0xa1, 0xb334, 1);
	if (gspca_dev->usb_buf[0] == 0x02)
		return (hdata << 8) + mdata;
	return hdata;
}