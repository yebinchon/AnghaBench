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
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (struct gspca_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*,int*,int) ; 
 int* sensor_reset ; 

__attribute__((used)) static void FUNC5(struct gspca_dev *gspca_dev)
{
	int i;
	const u8 *p;
	u8 byte;
	u8 val[6] = {0x62, 0, 0x64, 0, 0x60, 0x05};
	static const u8 sensor_init[] = {
		0xdf, 0x6d,
		0xdd, 0x18,
		0x5a, 0xe0,
		0x5c, 0x07,
		0x5d, 0xb0,
		0x5e, 0x1e,
		0x60, 0x71,
		0xef, 0x00,
		0xe9, 0x00,
		0xea, 0x00,
		0x90, 0x24,
		0x91, 0xb2,
		0x82, 0x32,
		0xfd, 0x41,
		0x00			/* table end */
	};

	FUNC4(gspca_dev, sensor_reset, sizeof sensor_reset);
	FUNC0(100);
	i = 4;
	while (--i > 0) {
		byte = FUNC2(gspca_dev, 0x0060);
		if (!(byte & 0x01))
			break;
		FUNC0(100);
	}
	byte = FUNC2(gspca_dev, 0x0063);
	if (byte != 0x17) {
		FUNC1("Bad sensor reset %02x\n", byte);
		/* continue? */
	}

	p = sensor_init;
	while (*p != 0) {
		val[1] = *p++;
		val[3] = *p++;
		if (*p == 0)
			FUNC3(gspca_dev, 0x3c80);
		FUNC4(gspca_dev, val, sizeof val);
		i = 4;
		while (--i >= 0) {
			FUNC0(15);
			byte = FUNC2(gspca_dev, 0x60);
			if (!(byte & 0x01))
				break;
		}
	}
	FUNC0(15);
	FUNC3(gspca_dev, 0x3c80);
}