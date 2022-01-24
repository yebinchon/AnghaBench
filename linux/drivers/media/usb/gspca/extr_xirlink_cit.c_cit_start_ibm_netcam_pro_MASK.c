#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int width; } ;
struct gspca_dev {TYPE_1__ pixfmt; } ;

/* Variables and functions */
 int FUNC0 (int**) ; 
 int FUNC1 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*,unsigned short const,int) ; 
 int** rca_initdata ; 
 scalar_t__ rca_input ; 

__attribute__((used)) static int FUNC5(struct gspca_dev *gspca_dev)
{
	const unsigned short compression = 0; /* 0=none, 7=best frame rate */
	int i, clock_div;

	clock_div = FUNC1(gspca_dev);
	if (clock_div < 0)
		return clock_div;

	FUNC4(gspca_dev, 0x0003, 0x0133);
	FUNC4(gspca_dev, 0x0000, 0x0117);
	FUNC4(gspca_dev, 0x0008, 0x0123);
	FUNC4(gspca_dev, 0x0000, 0x0100);
	FUNC4(gspca_dev, 0x0060, 0x0116);
	/* cit_write_reg(gspca_dev, 0x0002, 0x0112); see sd_stop0 */
	FUNC4(gspca_dev, 0x0000, 0x0133);
	FUNC4(gspca_dev, 0x0000, 0x0123);
	FUNC4(gspca_dev, 0x0001, 0x0117);
	FUNC4(gspca_dev, 0x0040, 0x0108);
	FUNC4(gspca_dev, 0x0019, 0x012c);
	FUNC4(gspca_dev, 0x0060, 0x0116);
	/* cit_write_reg(gspca_dev, 0x000b, 0x0115); see sd_stop0 */

	FUNC2(gspca_dev, 0x0049, 0x0000);

	FUNC4(gspca_dev, 0x0000, 0x0101); /* Same on 160x120, 320x240 */
	FUNC4(gspca_dev, 0x003a, 0x0102); /* Hstart */
	FUNC4(gspca_dev, 0x00a0, 0x0103); /* Same on 160x120, 320x240 */
	FUNC4(gspca_dev, 0x0078, 0x0105); /* Same on 160x120, 320x240 */
	FUNC4(gspca_dev, 0x0000, 0x010a); /* Same */
	FUNC4(gspca_dev, 0x0002, 0x011d); /* Same on 160x120, 320x240 */
	FUNC4(gspca_dev, 0x0000, 0x0129); /* Same */
	FUNC4(gspca_dev, 0x00fc, 0x012b); /* Same */
	FUNC4(gspca_dev, 0x0022, 0x012a); /* Same */

	switch (gspca_dev->pixfmt.width) {
	case 160: /* 160x120 */
		FUNC4(gspca_dev, 0x0024, 0x010b);
		FUNC4(gspca_dev, 0x0089, 0x0119);
		FUNC4(gspca_dev, 0x000a, 0x011b);
		FUNC4(gspca_dev, 0x0003, 0x011e);
		FUNC4(gspca_dev, 0x0007, 0x0104);
		FUNC4(gspca_dev, 0x0009, 0x011a);
		FUNC4(gspca_dev, 0x008b, 0x011c);
		FUNC4(gspca_dev, 0x0008, 0x0118);
		FUNC4(gspca_dev, 0x0000, 0x0132);
		break;
	case 320: /* 320x240 */
		FUNC4(gspca_dev, 0x0028, 0x010b);
		FUNC4(gspca_dev, 0x00d9, 0x0119);
		FUNC4(gspca_dev, 0x0006, 0x011b);
		FUNC4(gspca_dev, 0x0000, 0x011e);
		FUNC4(gspca_dev, 0x000e, 0x0104);
		FUNC4(gspca_dev, 0x0004, 0x011a);
		FUNC4(gspca_dev, 0x003f, 0x011c);
		FUNC4(gspca_dev, 0x000c, 0x0118);
		FUNC4(gspca_dev, 0x0000, 0x0132);
		break;
	}

	FUNC2(gspca_dev, 0x0019, 0x0031);
	FUNC2(gspca_dev, 0x001a, 0x0003);
	FUNC2(gspca_dev, 0x001b, 0x0038);
	FUNC2(gspca_dev, 0x001c, 0x0000);
	FUNC2(gspca_dev, 0x0024, 0x0001);
	FUNC2(gspca_dev, 0x0027, 0x0001);
	FUNC2(gspca_dev, 0x002a, 0x0004);
	FUNC2(gspca_dev, 0x0035, 0x000b);
	FUNC2(gspca_dev, 0x003f, 0x0001);
	FUNC2(gspca_dev, 0x0044, 0x0000);
	FUNC2(gspca_dev, 0x0054, 0x0000);
	FUNC2(gspca_dev, 0x00c4, 0x0000);
	FUNC2(gspca_dev, 0x00e7, 0x0001);
	FUNC2(gspca_dev, 0x00e9, 0x0001);
	FUNC2(gspca_dev, 0x00ee, 0x0000);
	FUNC2(gspca_dev, 0x00f3, 0x00c0);

	FUNC4(gspca_dev, compression, 0x0109);
	FUNC4(gspca_dev, clock_div, 0x0111);

/*	if (sd->input_index) { */
	if (rca_input) {
		for (i = 0; i < FUNC0(rca_initdata); i++) {
			if (rca_initdata[i][0])
				FUNC3(gspca_dev, rca_initdata[i][2], 0);
			else
				FUNC4(gspca_dev, rca_initdata[i][1],
					      rca_initdata[i][2]);
		}
	}

	return 0;
}