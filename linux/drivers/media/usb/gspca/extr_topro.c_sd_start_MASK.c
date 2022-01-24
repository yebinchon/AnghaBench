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
struct sd {scalar_t__ bridge; scalar_t__ sensor; int /*<<< orphan*/  jpegqual; int /*<<< orphan*/  red; int /*<<< orphan*/  blue; int /*<<< orphan*/  quality; int /*<<< orphan*/  jpeg_hdr; } ;
struct TYPE_2__ {int /*<<< orphan*/  width; int /*<<< orphan*/  height; } ;
struct gspca_dev {int usb_err; int /*<<< orphan*/  exposure; int /*<<< orphan*/  autogain; int /*<<< orphan*/  gain; scalar_t__ curr_mode; TYPE_1__ pixfmt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BRIDGE_TP6800 ; 
 scalar_t__ BRIDGE_TP6810 ; 
 scalar_t__ SENSOR_CX0342 ; 
 scalar_t__ SENSOR_SOI763A ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct gspca_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct gspca_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct gspca_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct gspca_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct gspca_dev*) ; 
 int /*<<< orphan*/  tp6810_late_start ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;

	FUNC3(sd->jpeg_hdr, gspca_dev->pixfmt.height,
			gspca_dev->pixfmt.width);
	FUNC6(gspca_dev, sd->quality);
	if (sd->bridge == BRIDGE_TP6800) {
		if (sd->sensor == SENSOR_CX0342)
			FUNC1(gspca_dev);
		else
			FUNC11(gspca_dev);
	} else {
		if (sd->sensor == SENSOR_CX0342)
			FUNC2(gspca_dev);
		else
			FUNC12(gspca_dev);
		FUNC5(gspca_dev, tp6810_late_start,
				FUNC0(tp6810_late_start));
		FUNC4(gspca_dev, 0x80, 0x03);
		FUNC4(gspca_dev, 0x82, gspca_dev->curr_mode ? 0x0a : 0x0e);

		if (sd->sensor == SENSOR_CX0342)
			FUNC8(gspca_dev,
				FUNC13(gspca_dev->exposure),
				FUNC13(gspca_dev->gain),
				FUNC13(sd->blue),
				FUNC13(sd->red));
		else
			FUNC8(gspca_dev,
				FUNC13(gspca_dev->exposure),
				FUNC13(gspca_dev->gain), 0, 0);
		if (sd->sensor == SENSOR_SOI763A)
			FUNC10(gspca_dev,
				   FUNC13(sd->jpegqual));
		if (sd->bridge == BRIDGE_TP6810)
			FUNC7(gspca_dev,
				    FUNC13(gspca_dev->autogain));
	}

	FUNC9(gspca_dev, FUNC13(gspca_dev->exposure));

	return gspca_dev->usb_err;
}