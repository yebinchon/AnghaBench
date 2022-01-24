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
struct sd {int /*<<< orphan*/  jpeg_hdr; } ;
struct TYPE_2__ {int width; int /*<<< orphan*/  height; } ;
struct gspca_dev {int alt; int usb_err; int /*<<< orphan*/  iface; int /*<<< orphan*/  dev; TYPE_1__ pixfmt; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_STREAM ; 
 int /*<<< orphan*/  QUALITY ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct gspca_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct gspca_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct gspca_dev*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct gspca_dev*,int,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	int ret, value;

	/* create the JPEG header */
	FUNC1(sd->jpeg_hdr, gspca_dev->pixfmt.height,
			gspca_dev->pixfmt.width,
			0x22);		/* JPEG 411 */
	FUNC2(sd->jpeg_hdr, QUALITY);

	/* work on alternate 1 */
	FUNC9(gspca_dev->dev, gspca_dev->iface, 1);

	FUNC7(gspca_dev, 0x10000000);
	FUNC7(gspca_dev, 0x00000000);
	FUNC7(gspca_dev, 0x8002e001);
	FUNC7(gspca_dev, 0x14000000);
	if (gspca_dev->pixfmt.width > 320)
		value = 0x8002e001;		/* 640x480 */
	else
		value = 0x4001f000;		/* 320x240 */
	FUNC7(gspca_dev, value);
	ret = FUNC9(gspca_dev->dev,
					gspca_dev->iface,
					gspca_dev->alt);
	if (ret < 0) {
		FUNC3("set intf %d %d failed\n",
		       gspca_dev->iface, gspca_dev->alt);
		gspca_dev->usb_err = ret;
		goto out;
	}
	FUNC5(gspca_dev, 0x0630);
	FUNC4(gspca_dev, 0x000020);	/* << (value ff ff ff ff) */
	FUNC5(gspca_dev, 0x0650);
	FUNC8(gspca_dev, 0x000020, 0xffffffff);
	FUNC6(gspca_dev, 0x0620, 0);
	FUNC6(gspca_dev, 0x0630, 0);
	FUNC6(gspca_dev, 0x0640, 0);
	FUNC6(gspca_dev, 0x0650, 0);
	FUNC6(gspca_dev, 0x0660, 0);
	FUNC7(gspca_dev, 0x09800000);		/* Red ? */
	FUNC7(gspca_dev, 0x0a800000);		/* Green ? */
	FUNC7(gspca_dev, 0x0b800000);		/* Blue ? */
	FUNC7(gspca_dev, 0x0d030000);		/* Gamma ? */

	/* start the video flow */
	FUNC7(gspca_dev, 0x01000000);
	FUNC7(gspca_dev, 0x01000000);
	if (gspca_dev->usb_err >= 0)
		FUNC0(gspca_dev, D_STREAM, "camera started alt: 0x%02x\n",
			  gspca_dev->alt);
out:
	return gspca_dev->usb_err;
}