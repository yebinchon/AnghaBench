#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct sd {int fmt; scalar_t__ nchg; scalar_t__ npkt; scalar_t__ pktsz; scalar_t__ vflip; scalar_t__ hflip; scalar_t__ exposure; scalar_t__ gain; scalar_t__ red; scalar_t__ blue; scalar_t__ gamma; scalar_t__ hue; scalar_t__ saturation; scalar_t__ contrast; scalar_t__ brightness; int /*<<< orphan*/  vstart; int /*<<< orphan*/  hstart; int /*<<< orphan*/ * jpeg_hdr; scalar_t__ jpegqual; } ;
struct TYPE_6__ {int width; int height; } ;
struct TYPE_5__ {TYPE_1__* cam_mode; } ;
struct gspca_dev {int usb_err; TYPE_3__ pixfmt; scalar_t__ curr_mode; TYPE_2__ cam; } ;
struct TYPE_4__ {int priv; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int,int) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t JPEG_QT0_OFFSET ; 
 size_t JPEG_QT1_OFFSET ; 
 int MODE_JPEG ; 
 int MODE_RAW ; 
#define  SCALE_1280x1024 131 
#define  SCALE_160x120 130 
#define  SCALE_320x240 129 
#define  SCALE_640x480 128 
 int SCALE_MASK ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct gspca_dev*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct gspca_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct gspca_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct gspca_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct gspca_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 

__attribute__((used)) static int FUNC15(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	int mode = gspca_dev->cam.cam_mode[(int) gspca_dev->curr_mode].priv;
	int width = gspca_dev->pixfmt.width;
	int height = gspca_dev->pixfmt.height;
	u8 fmt, scale = 0;

	FUNC3(sd->jpeg_hdr, height, width,
			0x21);
	FUNC4(sd->jpeg_hdr, FUNC14(sd->jpegqual));

	if (mode & MODE_RAW)
		fmt = 0x2d;
	else if (mode & MODE_JPEG)
		fmt = 0x24;
	else
		fmt = 0x2f;	/* YUV 420 */
	sd->fmt = fmt;

	switch (mode & SCALE_MASK) {
	case SCALE_1280x1024:
		scale = 0xc0;
		FUNC5("Set 1280x1024\n");
		break;
	case SCALE_640x480:
		scale = 0x80;
		FUNC5("Set 640x480\n");
		break;
	case SCALE_320x240:
		scale = 0x90;
		FUNC5("Set 320x240\n");
		break;
	case SCALE_160x120:
		scale = 0xa0;
		FUNC5("Set 160x120\n");
		break;
	}

	FUNC2(gspca_dev, mode);
	FUNC6(gspca_dev, 0x1100, &sd->jpeg_hdr[JPEG_QT0_OFFSET], 64);
	FUNC6(gspca_dev, 0x1140, &sd->jpeg_hdr[JPEG_QT1_OFFSET], 64);
	FUNC6(gspca_dev, 0x10fb, FUNC0(width, height), 5);
	FUNC6(gspca_dev, 0x1180, FUNC1(mode, sd->hstart, sd->vstart), 6);
	FUNC7(gspca_dev, 0x1189, scale);
	FUNC7(gspca_dev, 0x10e0, fmt);

	FUNC8(gspca_dev, FUNC14(sd->brightness),
			FUNC14(sd->contrast),
			FUNC14(sd->saturation),
			FUNC14(sd->hue));
	FUNC11(gspca_dev, FUNC14(sd->gamma));
	FUNC13(gspca_dev, FUNC14(sd->blue),
			FUNC14(sd->red));
	if (sd->gain)
		FUNC10(gspca_dev, FUNC14(sd->gain));
	if (sd->exposure)
		FUNC9(gspca_dev, FUNC14(sd->exposure));
	if (sd->hflip)
		FUNC12(gspca_dev, FUNC14(sd->hflip),
				FUNC14(sd->vflip));

	FUNC7(gspca_dev, 0x1007, 0x20);
	FUNC7(gspca_dev, 0x1061, 0x03);

	/* if JPEG, prepare the compression quality update */
	if (mode & MODE_JPEG) {
		sd->pktsz = sd->npkt = 0;
		sd->nchg = 0;
	}

	return gspca_dev->usb_err;
}