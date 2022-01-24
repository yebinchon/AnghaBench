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
typedef  int u16 ;
struct sd {scalar_t__ pkt_seq; } ;
struct TYPE_2__ {int width; int height; } ;
struct gspca_dev {scalar_t__ usb_err; int /*<<< orphan*/  alt; TYPE_1__ pixfmt; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_STREAM ; 
 scalar_t__ STK1135_REG_CIEPO ; 
 scalar_t__ STK1135_REG_CISPO ; 
 scalar_t__ STK1135_REG_GCTRL ; 
 scalar_t__ STK1135_REG_SCTRL ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*) ; 

__attribute__((used)) static int FUNC5(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	u16 width, height;

	/* enable sensor (GPIO5) */
	FUNC1(gspca_dev, STK1135_REG_GCTRL, (1 << 5));

	FUNC3(gspca_dev);

	/* set capture start position X = 0, Y = 0 */
	FUNC1(gspca_dev, STK1135_REG_CISPO + 0, 0x00);
	FUNC1(gspca_dev, STK1135_REG_CISPO + 1, 0x00);
	FUNC1(gspca_dev, STK1135_REG_CISPO + 2, 0x00);
	FUNC1(gspca_dev, STK1135_REG_CISPO + 3, 0x00);

	/* set capture end position */
	width = gspca_dev->pixfmt.width;
	height = gspca_dev->pixfmt.height;
	FUNC1(gspca_dev, STK1135_REG_CIEPO + 0, width & 0xff);
	FUNC1(gspca_dev, STK1135_REG_CIEPO + 1, width >> 8);
	FUNC1(gspca_dev, STK1135_REG_CIEPO + 2, height & 0xff);
	FUNC1(gspca_dev, STK1135_REG_CIEPO + 3, height >> 8);

	/* set 8-bit mode */
	FUNC1(gspca_dev, STK1135_REG_SCTRL, 0x20);

	FUNC4(gspca_dev);

	/* enable capture */
	FUNC2(gspca_dev, STK1135_REG_SCTRL, 0x80, 0x80);

	if (gspca_dev->usb_err >= 0)
		FUNC0(gspca_dev, D_STREAM, "camera started alt: 0x%02x\n",
			  gspca_dev->alt);

	sd->pkt_seq = 0;

	return gspca_dev->usb_err;
}