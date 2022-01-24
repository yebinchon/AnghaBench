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
struct sd {int subtype; int /*<<< orphan*/  jpeg_hdr; } ;
struct TYPE_2__ {int /*<<< orphan*/  width; int /*<<< orphan*/  height; } ;
struct gspca_dev {int* usb_buf; int /*<<< orphan*/  curr_mode; TYPE_1__ pixfmt; } ;
typedef  int __u8 ;

/* Variables and functions */
#define  AgfaCl20 142 
#define  AiptekPocketDV 141 
#define  BenqDC1016 140 
 int /*<<< orphan*/  Clicksmart510_defaults ; 
#define  CreativePCCam300 139 
#define  DLinkDSC350 138 
 int /*<<< orphan*/  D_STREAM ; 
#define  Gsmartmini 137 
#define  IntelPocketPCCamera 136 
#define  KodakEZ200 135 
#define  LogitechClickSmart310 134 
#define  LogitechClickSmart510 133 
#define  LogitechTraveler 132 
#define  MustekGsmart300 131 
#define  Optimedia 130 
#define  PalmPixDC85 129 
 int /*<<< orphan*/  QUALITY ; 
#define  ToptroIndus 128 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  qtable_creative_pccam ; 
 int /*<<< orphan*/  qtable_kodak_ez200 ; 
 int /*<<< orphan*/  qtable_pocketdv ; 
 int /*<<< orphan*/  FUNC5 (struct gspca_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct gspca_dev*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC7 (struct gspca_dev*,int,int,int) ; 
 int FUNC8 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct gspca_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct gspca_dev*) ; 
 int /*<<< orphan*/  spca500_visual_defaults ; 
 int FUNC12 (struct gspca_dev*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct gspca_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	int err;
	__u8 Data;
	__u8 xmult, ymult;

	/* create the JPEG header */
	FUNC2(sd->jpeg_hdr, gspca_dev->pixfmt.height,
			gspca_dev->pixfmt.width,
			0x22);		/* JPEG 411 */
	FUNC3(sd->jpeg_hdr, QUALITY);

	if (sd->subtype == LogitechClickSmart310) {
		xmult = 0x16;
		ymult = 0x12;
	} else {
		xmult = 0x28;
		ymult = 0x1e;
	}

	/* is there a sensor here ? */
	FUNC5(gspca_dev, 0x8a04, 1);
	FUNC0(gspca_dev, D_STREAM, "Spca500 Sensor Address 0x%02x\n",
		  gspca_dev->usb_buf[0]);
	FUNC0(gspca_dev, D_STREAM, "Spca500 curr_mode: %d Xmult: 0x%02x, Ymult: 0x%02x",
		  gspca_dev->curr_mode, xmult, ymult);

	/* setup qtable */
	switch (sd->subtype) {
	case LogitechClickSmart310:
		 FUNC10(gspca_dev, xmult, ymult);

		/* enable drop packet */
		FUNC7(gspca_dev, 0x00, 0x850a, 0x0001);
		FUNC7(gspca_dev, 0x00, 0x8880, 3);
		err = FUNC12(gspca_dev,
					   0x00, 0x8800, 0x8840,
					   qtable_creative_pccam);
		if (err < 0)
			FUNC1(gspca_dev, "spca50x_setup_qtable failed\n");
		/* Init SDRAM - needed for SDRAM access */
		FUNC7(gspca_dev, 0x00, 0x870a, 0x04);

		/* switch to video camera mode */
		FUNC7(gspca_dev, 0x00, 0x8000, 0x0004);
		FUNC4(500);
		if (FUNC6(gspca_dev, 0, 0x8000, 0x44) != 0)
			FUNC1(gspca_dev, "reg_r_wait() failed\n");

		FUNC5(gspca_dev, 0x816b, 1);
		Data = gspca_dev->usb_buf[0];
		FUNC7(gspca_dev, 0x00, 0x816b, Data);

		FUNC11(gspca_dev);

		FUNC13(gspca_dev, spca500_visual_defaults);
		FUNC10(gspca_dev, xmult, ymult);
		/* enable drop packet */
		err = FUNC7(gspca_dev, 0x00, 0x850a, 0x0001);
		if (err < 0)
			FUNC1(gspca_dev, "failed to enable drop packet\n");
		FUNC7(gspca_dev, 0x00, 0x8880, 3);
		err = FUNC12(gspca_dev,
					   0x00, 0x8800, 0x8840,
					   qtable_creative_pccam);
		if (err < 0)
			FUNC1(gspca_dev, "spca50x_setup_qtable failed\n");

		/* Init SDRAM - needed for SDRAM access */
		FUNC7(gspca_dev, 0x00, 0x870a, 0x04);

		/* switch to video camera mode */
		FUNC7(gspca_dev, 0x00, 0x8000, 0x0004);

		if (FUNC6(gspca_dev, 0, 0x8000, 0x44) != 0)
			FUNC1(gspca_dev, "reg_r_wait() failed\n");

		FUNC5(gspca_dev, 0x816b, 1);
		Data = gspca_dev->usb_buf[0];
		FUNC7(gspca_dev, 0x00, 0x816b, Data);
		break;
	case CreativePCCam300:		/* Creative PC-CAM 300 640x480 CCD */
	case IntelPocketPCCamera:	/* FIXME: Temporary fix for
					 *	Intel Pocket PC Camera
					 *	- NWG (Sat 29th March 2003) */

		/* do a full reset */
		err = FUNC8(gspca_dev);
		if (err < 0)
			FUNC1(gspca_dev, "spca500_full_reset failed\n");

		/* enable drop packet */
		err = FUNC7(gspca_dev, 0x00, 0x850a, 0x0001);
		if (err < 0)
			FUNC1(gspca_dev, "failed to enable drop packet\n");
		FUNC7(gspca_dev, 0x00, 0x8880, 3);
		err = FUNC12(gspca_dev,
					   0x00, 0x8800, 0x8840,
					   qtable_creative_pccam);
		if (err < 0)
			FUNC1(gspca_dev, "spca50x_setup_qtable failed\n");

		FUNC10(gspca_dev, xmult, ymult);
		FUNC7(gspca_dev, 0x20, 0x0001, 0x0004);

		/* switch to video camera mode */
		FUNC7(gspca_dev, 0x00, 0x8000, 0x0004);

		if (FUNC6(gspca_dev, 0, 0x8000, 0x44) != 0)
			FUNC1(gspca_dev, "reg_r_wait() failed\n");

		FUNC5(gspca_dev, 0x816b, 1);
		Data = gspca_dev->usb_buf[0];
		FUNC7(gspca_dev, 0x00, 0x816b, Data);

/*		write_vector(gspca_dev, spca500_visual_defaults); */
		break;
	case KodakEZ200:		/* Kodak EZ200 */

		/* do a full reset */
		err = FUNC8(gspca_dev);
		if (err < 0)
			FUNC1(gspca_dev, "spca500_full_reset failed\n");
		/* enable drop packet */
		FUNC7(gspca_dev, 0x00, 0x850a, 0x0001);
		FUNC7(gspca_dev, 0x00, 0x8880, 0);
		err = FUNC12(gspca_dev,
					   0x00, 0x8800, 0x8840,
					   qtable_kodak_ez200);
		if (err < 0)
			FUNC1(gspca_dev, "spca50x_setup_qtable failed\n");
		FUNC10(gspca_dev, xmult, ymult);

		FUNC7(gspca_dev, 0x20, 0x0001, 0x0004);

		/* switch to video camera mode */
		FUNC7(gspca_dev, 0x00, 0x8000, 0x0004);

		if (FUNC6(gspca_dev, 0, 0x8000, 0x44) != 0)
			FUNC1(gspca_dev, "reg_r_wait() failed\n");

		FUNC5(gspca_dev, 0x816b, 1);
		Data = gspca_dev->usb_buf[0];
		FUNC7(gspca_dev, 0x00, 0x816b, Data);

/*		write_vector(gspca_dev, spca500_visual_defaults); */
		break;

	case BenqDC1016:
	case DLinkDSC350:		/* FamilyCam 300 */
	case AiptekPocketDV:		/* Aiptek PocketDV */
	case Gsmartmini:		/*Mustek Gsmart Mini */
	case MustekGsmart300:		/* Mustek Gsmart 300 */
	case PalmPixDC85:
	case Optimedia:
	case ToptroIndus:
	case AgfaCl20:
		FUNC9(gspca_dev);
		FUNC7(gspca_dev, 0x00, 0x0d01, 0x01);
		/* enable drop packet */
		FUNC7(gspca_dev, 0x00, 0x850a, 0x0001);

		err = FUNC12(gspca_dev,
				   0x00, 0x8800, 0x8840, qtable_pocketdv);
		if (err < 0)
			FUNC1(gspca_dev, "spca50x_setup_qtable failed\n");
		FUNC7(gspca_dev, 0x00, 0x8880, 2);

		/* familycam Quicksmart pocketDV stuff */
		FUNC7(gspca_dev, 0x00, 0x800a, 0x00);
		/* Set agc transfer: synced between frames */
		FUNC7(gspca_dev, 0x00, 0x820f, 0x01);
		/* Init SDRAM - needed for SDRAM access */
		FUNC7(gspca_dev, 0x00, 0x870a, 0x04);

		FUNC10(gspca_dev, xmult, ymult);
		/* switch to video camera mode */
		FUNC7(gspca_dev, 0x00, 0x8000, 0x0004);

		FUNC6(gspca_dev, 0, 0x8000, 0x44);

		FUNC5(gspca_dev, 0x816b, 1);
		Data = gspca_dev->usb_buf[0];
		FUNC7(gspca_dev, 0x00, 0x816b, Data);
		break;
	case LogitechTraveler:
	case LogitechClickSmart510:
		FUNC7(gspca_dev, 0x02, 0x00, 0x00);
		/* enable drop packet */
		FUNC7(gspca_dev, 0x00, 0x850a, 0x0001);

		err = FUNC12(gspca_dev,
					0x00, 0x8800,
					0x8840, qtable_creative_pccam);
		if (err < 0)
			FUNC1(gspca_dev, "spca50x_setup_qtable failed\n");
		FUNC7(gspca_dev, 0x00, 0x8880, 3);
		FUNC7(gspca_dev, 0x00, 0x800a, 0x00);
		/* Init SDRAM - needed for SDRAM access */
		FUNC7(gspca_dev, 0x00, 0x870a, 0x04);

		FUNC10(gspca_dev, xmult, ymult);

		/* switch to video camera mode */
		FUNC7(gspca_dev, 0x00, 0x8000, 0x0004);
		FUNC6(gspca_dev, 0, 0x8000, 0x44);

		FUNC5(gspca_dev, 0x816b, 1);
		Data = gspca_dev->usb_buf[0];
		FUNC7(gspca_dev, 0x00, 0x816b, Data);
		FUNC13(gspca_dev, Clicksmart510_defaults);
		break;
	}
	return 0;
}