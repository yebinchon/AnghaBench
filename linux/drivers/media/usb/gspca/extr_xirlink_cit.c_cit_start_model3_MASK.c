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
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*,unsigned short const,int) ; 
 int** rca_initdata ; 
 scalar_t__ rca_input ; 

__attribute__((used)) static int FUNC4(struct gspca_dev *gspca_dev)
{
	const unsigned short compression = 0; /* 0=none, 7=best frame rate */
	int i, clock_div = 0;

	/* HDG not in ibmcam driver, added to see if it helps with
	   auto-detecting between model3 and ibm netcamera pro */
	FUNC2(gspca_dev, 0x128, 1);

	FUNC3(gspca_dev, 0x0000, 0x0100);
	FUNC2(gspca_dev, 0x0116, 0);
	FUNC3(gspca_dev, 0x0060, 0x0116);
	FUNC3(gspca_dev, 0x0002, 0x0112);
	FUNC3(gspca_dev, 0x0000, 0x0123);
	FUNC3(gspca_dev, 0x0001, 0x0117);
	FUNC3(gspca_dev, 0x0040, 0x0108);
	FUNC3(gspca_dev, 0x0019, 0x012c);
	FUNC3(gspca_dev, 0x0060, 0x0116);
	FUNC3(gspca_dev, 0x0002, 0x0115);
	FUNC3(gspca_dev, 0x0003, 0x0115);
	FUNC2(gspca_dev, 0x0115, 0);
	FUNC3(gspca_dev, 0x000b, 0x0115);

	/* TESTME HDG not in ibmcam driver, added to see if it helps with
	   auto-detecting between model3 and ibm netcamera pro */
	if (0) {
		FUNC3(gspca_dev, 0x0078, 0x012d);
		FUNC3(gspca_dev, 0x0001, 0x012f);
		FUNC3(gspca_dev, 0xd141, 0x0124);
		FUNC3(gspca_dev, 0x0079, 0x012d);
		FUNC3(gspca_dev, 0x00ff, 0x0130);
		FUNC3(gspca_dev, 0xcd41, 0x0124);
		FUNC3(gspca_dev, 0xfffa, 0x0124);
		FUNC2(gspca_dev, 0x0126, 1);
	}

	FUNC1(gspca_dev, 0x000a, 0x0040);
	FUNC1(gspca_dev, 0x000b, 0x00f6);
	FUNC1(gspca_dev, 0x000c, 0x0002);
	FUNC1(gspca_dev, 0x000d, 0x0020);
	FUNC1(gspca_dev, 0x000e, 0x0033);
	FUNC1(gspca_dev, 0x000f, 0x0007);
	FUNC1(gspca_dev, 0x0010, 0x0000);
	FUNC1(gspca_dev, 0x0011, 0x0070);
	FUNC1(gspca_dev, 0x0012, 0x0030);
	FUNC1(gspca_dev, 0x0013, 0x0000);
	FUNC1(gspca_dev, 0x0014, 0x0001);
	FUNC1(gspca_dev, 0x0015, 0x0001);
	FUNC1(gspca_dev, 0x0016, 0x0001);
	FUNC1(gspca_dev, 0x0017, 0x0001);
	FUNC1(gspca_dev, 0x0018, 0x0000);
	FUNC1(gspca_dev, 0x001e, 0x00c3);
	FUNC1(gspca_dev, 0x0020, 0x0000);
	FUNC1(gspca_dev, 0x0028, 0x0010);
	FUNC1(gspca_dev, 0x0029, 0x0054);
	FUNC1(gspca_dev, 0x002a, 0x0013);
	FUNC1(gspca_dev, 0x002b, 0x0007);
	FUNC1(gspca_dev, 0x002d, 0x0028);
	FUNC1(gspca_dev, 0x002e, 0x0000);
	FUNC1(gspca_dev, 0x0031, 0x0000);
	FUNC1(gspca_dev, 0x0032, 0x0000);
	FUNC1(gspca_dev, 0x0033, 0x0000);
	FUNC1(gspca_dev, 0x0034, 0x0000);
	FUNC1(gspca_dev, 0x0035, 0x0038);
	FUNC1(gspca_dev, 0x003a, 0x0001);
	FUNC1(gspca_dev, 0x003c, 0x001e);
	FUNC1(gspca_dev, 0x003f, 0x000a);
	FUNC1(gspca_dev, 0x0041, 0x0000);
	FUNC1(gspca_dev, 0x0046, 0x003f);
	FUNC1(gspca_dev, 0x0047, 0x0000);
	FUNC1(gspca_dev, 0x0050, 0x0005);
	FUNC1(gspca_dev, 0x0052, 0x001a);
	FUNC1(gspca_dev, 0x0053, 0x0003);
	FUNC1(gspca_dev, 0x005a, 0x006b);
	FUNC1(gspca_dev, 0x005d, 0x001e);
	FUNC1(gspca_dev, 0x005e, 0x0030);
	FUNC1(gspca_dev, 0x005f, 0x0041);
	FUNC1(gspca_dev, 0x0064, 0x0008);
	FUNC1(gspca_dev, 0x0065, 0x0015);
	FUNC1(gspca_dev, 0x0068, 0x000f);
	FUNC1(gspca_dev, 0x0079, 0x0000);
	FUNC1(gspca_dev, 0x007a, 0x0000);
	FUNC1(gspca_dev, 0x007c, 0x003f);
	FUNC1(gspca_dev, 0x0082, 0x000f);
	FUNC1(gspca_dev, 0x0085, 0x0000);
	FUNC1(gspca_dev, 0x0099, 0x0000);
	FUNC1(gspca_dev, 0x009b, 0x0023);
	FUNC1(gspca_dev, 0x009c, 0x0022);
	FUNC1(gspca_dev, 0x009d, 0x0096);
	FUNC1(gspca_dev, 0x009e, 0x0096);
	FUNC1(gspca_dev, 0x009f, 0x000a);

	switch (gspca_dev->pixfmt.width) {
	case 160:
		FUNC3(gspca_dev, 0x0000, 0x0101); /* Same on 160x120, 320x240 */
		FUNC3(gspca_dev, 0x00a0, 0x0103); /* Same on 160x120, 320x240 */
		FUNC3(gspca_dev, 0x0078, 0x0105); /* Same on 160x120, 320x240 */
		FUNC3(gspca_dev, 0x0000, 0x010a); /* Same */
		FUNC3(gspca_dev, 0x0024, 0x010b); /* Differs everywhere */
		FUNC3(gspca_dev, 0x00a9, 0x0119);
		FUNC3(gspca_dev, 0x0016, 0x011b);
		FUNC3(gspca_dev, 0x0002, 0x011d); /* Same on 160x120, 320x240 */
		FUNC3(gspca_dev, 0x0003, 0x011e); /* Same on 160x120, 640x480 */
		FUNC3(gspca_dev, 0x0000, 0x0129); /* Same */
		FUNC3(gspca_dev, 0x00fc, 0x012b); /* Same */
		FUNC3(gspca_dev, 0x0018, 0x0102);
		FUNC3(gspca_dev, 0x0004, 0x0104);
		FUNC3(gspca_dev, 0x0004, 0x011a);
		FUNC3(gspca_dev, 0x0028, 0x011c);
		FUNC3(gspca_dev, 0x0022, 0x012a); /* Same */
		FUNC3(gspca_dev, 0x0000, 0x0118);
		FUNC3(gspca_dev, 0x0000, 0x0132);
		FUNC1(gspca_dev, 0x0021, 0x0001); /* Same */
		FUNC3(gspca_dev, compression, 0x0109);
		clock_div = 3;
		break;
	case 320:
		FUNC3(gspca_dev, 0x0000, 0x0101); /* Same on 160x120, 320x240 */
		FUNC3(gspca_dev, 0x00a0, 0x0103); /* Same on 160x120, 320x240 */
		FUNC3(gspca_dev, 0x0078, 0x0105); /* Same on 160x120, 320x240 */
		FUNC3(gspca_dev, 0x0000, 0x010a); /* Same */
		FUNC3(gspca_dev, 0x0028, 0x010b); /* Differs everywhere */
		FUNC3(gspca_dev, 0x0002, 0x011d); /* Same */
		FUNC3(gspca_dev, 0x0000, 0x011e);
		FUNC3(gspca_dev, 0x0000, 0x0129); /* Same */
		FUNC3(gspca_dev, 0x00fc, 0x012b); /* Same */
		/* 4 commands from 160x120 skipped */
		FUNC3(gspca_dev, 0x0022, 0x012a); /* Same */
		FUNC1(gspca_dev, 0x0021, 0x0001); /* Same */
		FUNC3(gspca_dev, compression, 0x0109);
		FUNC3(gspca_dev, 0x00d9, 0x0119);
		FUNC3(gspca_dev, 0x0006, 0x011b);
		FUNC3(gspca_dev, 0x0021, 0x0102); /* Same on 320x240, 640x480 */
		FUNC3(gspca_dev, 0x0010, 0x0104);
		FUNC3(gspca_dev, 0x0004, 0x011a);
		FUNC3(gspca_dev, 0x003f, 0x011c);
		FUNC3(gspca_dev, 0x001c, 0x0118);
		FUNC3(gspca_dev, 0x0000, 0x0132);
		clock_div = 5;
		break;
	case 640:
		FUNC3(gspca_dev, 0x00f0, 0x0105);
		FUNC3(gspca_dev, 0x0000, 0x010a); /* Same */
		FUNC3(gspca_dev, 0x0038, 0x010b); /* Differs everywhere */
		FUNC3(gspca_dev, 0x00d9, 0x0119); /* Same on 320x240, 640x480 */
		FUNC3(gspca_dev, 0x0006, 0x011b); /* Same on 320x240, 640x480 */
		FUNC3(gspca_dev, 0x0004, 0x011d); /* NC */
		FUNC3(gspca_dev, 0x0003, 0x011e); /* Same on 160x120, 640x480 */
		FUNC3(gspca_dev, 0x0000, 0x0129); /* Same */
		FUNC3(gspca_dev, 0x00fc, 0x012b); /* Same */
		FUNC3(gspca_dev, 0x0021, 0x0102); /* Same on 320x240, 640x480 */
		FUNC3(gspca_dev, 0x0016, 0x0104); /* NC */
		FUNC3(gspca_dev, 0x0004, 0x011a); /* Same on 320x240, 640x480 */
		FUNC3(gspca_dev, 0x003f, 0x011c); /* Same on 320x240, 640x480 */
		FUNC3(gspca_dev, 0x0022, 0x012a); /* Same */
		FUNC3(gspca_dev, 0x001c, 0x0118); /* Same on 320x240, 640x480 */
		FUNC1(gspca_dev, 0x0021, 0x0001); /* Same */
		FUNC3(gspca_dev, compression, 0x0109);
		FUNC3(gspca_dev, 0x0040, 0x0101);
		FUNC3(gspca_dev, 0x0040, 0x0103);
		FUNC3(gspca_dev, 0x0000, 0x0132); /* Same on 320x240, 640x480 */
		clock_div = 7;
		break;
	}

	FUNC1(gspca_dev, 0x007e, 0x000e);	/* Hue */
	FUNC1(gspca_dev, 0x0036, 0x0011);	/* Brightness */
	FUNC1(gspca_dev, 0x0060, 0x0002);	/* Sharpness */
	FUNC1(gspca_dev, 0x0061, 0x0004);	/* Sharpness */
	FUNC1(gspca_dev, 0x0062, 0x0005);	/* Sharpness */
	FUNC1(gspca_dev, 0x0063, 0x0014);	/* Sharpness */
	FUNC1(gspca_dev, 0x0096, 0x00a0);	/* Red sharpness */
	FUNC1(gspca_dev, 0x0097, 0x0096);	/* Blue sharpness */
	FUNC1(gspca_dev, 0x0067, 0x0001);	/* Contrast */
	FUNC1(gspca_dev, 0x005b, 0x000c);	/* Contrast */
	FUNC1(gspca_dev, 0x005c, 0x0016);	/* Contrast */
	FUNC1(gspca_dev, 0x0098, 0x000b);
	FUNC1(gspca_dev, 0x002c, 0x0003);	/* Was 1, broke 640x480 */
	FUNC1(gspca_dev, 0x002f, 0x002a);
	FUNC1(gspca_dev, 0x0030, 0x0029);
	FUNC1(gspca_dev, 0x0037, 0x0002);
	FUNC1(gspca_dev, 0x0038, 0x0059);
	FUNC1(gspca_dev, 0x003d, 0x002e);
	FUNC1(gspca_dev, 0x003e, 0x0028);
	FUNC1(gspca_dev, 0x0078, 0x0005);
	FUNC1(gspca_dev, 0x007b, 0x0011);
	FUNC1(gspca_dev, 0x007d, 0x004b);
	FUNC1(gspca_dev, 0x007f, 0x0022);
	FUNC1(gspca_dev, 0x0080, 0x000c);
	FUNC1(gspca_dev, 0x0081, 0x000b);
	FUNC1(gspca_dev, 0x0083, 0x00fd);
	FUNC1(gspca_dev, 0x0086, 0x000b);
	FUNC1(gspca_dev, 0x0087, 0x000b);
	FUNC1(gspca_dev, 0x007e, 0x000e);
	FUNC1(gspca_dev, 0x0096, 0x00a0);	/* Red sharpness */
	FUNC1(gspca_dev, 0x0097, 0x0096);	/* Blue sharpness */
	FUNC1(gspca_dev, 0x0098, 0x000b);

	/* FIXME we should probably use cit_get_clock_div() here (in
	   combination with isoc negotiation using the programmable isoc size)
	   like with the IBM netcam pro). */
	FUNC3(gspca_dev, clock_div, 0x0111); /* Clock Divider */

	switch (gspca_dev->pixfmt.width) {
	case 160:
		FUNC1(gspca_dev, 0x001f, 0x0000); /* Same */
		FUNC1(gspca_dev, 0x0039, 0x001f); /* Same */
		FUNC1(gspca_dev, 0x003b, 0x003c); /* Same */
		FUNC1(gspca_dev, 0x0040, 0x000a);
		FUNC1(gspca_dev, 0x0051, 0x000a);
		break;
	case 320:
		FUNC1(gspca_dev, 0x001f, 0x0000); /* Same */
		FUNC1(gspca_dev, 0x0039, 0x001f); /* Same */
		FUNC1(gspca_dev, 0x003b, 0x003c); /* Same */
		FUNC1(gspca_dev, 0x0040, 0x0008);
		FUNC1(gspca_dev, 0x0051, 0x000b);
		break;
	case 640:
		FUNC1(gspca_dev, 0x001f, 0x0002);	/* !Same */
		FUNC1(gspca_dev, 0x0039, 0x003e);	/* !Same */
		FUNC1(gspca_dev, 0x0040, 0x0008);
		FUNC1(gspca_dev, 0x0051, 0x000a);
		break;
	}

/*	if (sd->input_index) { */
	if (rca_input) {
		for (i = 0; i < FUNC0(rca_initdata); i++) {
			if (rca_initdata[i][0])
				FUNC2(gspca_dev, rca_initdata[i][2], 0);
			else
				FUNC3(gspca_dev, rca_initdata[i][1],
					      rca_initdata[i][2]);
		}
	}

	return 0;
}