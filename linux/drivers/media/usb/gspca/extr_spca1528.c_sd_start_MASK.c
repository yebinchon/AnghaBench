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
struct sd {scalar_t__ pkt_seq; int /*<<< orphan*/  jpeg_hdr; } ;
struct TYPE_2__ {int /*<<< orphan*/  width; int /*<<< orphan*/  height; } ;
struct gspca_dev {int usb_err; TYPE_1__ pixfmt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct gspca_dev*) ; 

__attribute__((used)) static int FUNC7(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;

	/* initialize the JPEG header */
	FUNC0(sd->jpeg_hdr, gspca_dev->pixfmt.height,
			gspca_dev->pixfmt.width,
			0x22);		/* JPEG 411 */

	/* the JPEG quality shall be 85% */
	FUNC1(sd->jpeg_hdr, 85);

	FUNC3(gspca_dev, 0x00, 0x2520, 1);
	FUNC2(8);

	/* start the capture */
	FUNC5(gspca_dev);
	FUNC4(gspca_dev, 0x31, 0x0000, 0x0004);	/* start request */
	FUNC6(gspca_dev);
	FUNC5(gspca_dev);
	FUNC2(200);

	sd->pkt_seq = 0;
	return gspca_dev->usb_err;
}