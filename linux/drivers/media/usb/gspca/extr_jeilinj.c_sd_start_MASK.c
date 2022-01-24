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
struct sd {int /*<<< orphan*/  quality; int /*<<< orphan*/  jpeg_hdr; } ;
struct TYPE_2__ {int /*<<< orphan*/  width; int /*<<< orphan*/  height; } ;
struct gspca_dev {int usb_err; TYPE_1__ pixfmt; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_STREAM ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct gspca_dev *gspca_dev)
{
	struct sd *dev = (struct sd *) gspca_dev;

	/* create the JPEG header */
	FUNC2(dev->jpeg_hdr, gspca_dev->pixfmt.height,
			gspca_dev->pixfmt.width,
			0x21);          /* JPEG 422 */
	FUNC3(dev->jpeg_hdr, dev->quality);
	FUNC0(gspca_dev, D_STREAM, "Start streaming at %dx%d\n",
		  gspca_dev->pixfmt.height, gspca_dev->pixfmt.width);
	FUNC1(gspca_dev);
	return gspca_dev->usb_err;
}