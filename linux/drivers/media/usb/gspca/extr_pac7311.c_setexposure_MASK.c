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
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int,int) ; 

__attribute__((used)) static void FUNC1(struct gspca_dev *gspca_dev, s32 val)
{
	FUNC0(gspca_dev, 0xff, 0x04);			/* page 4 */
	FUNC0(gspca_dev, 0x02, val);

	/* load registers to sensor (Bit 0, auto clear) */
	FUNC0(gspca_dev, 0x11, 0x01);

	/*
	 * Page 1 register 8 must always be 0x08 except when not in
	 *  640x480 mode and page 4 reg 2 <= 3 then it must be 9
	 */
	FUNC0(gspca_dev, 0xff, 0x01);
	if (gspca_dev->pixfmt.width != 640 && val <= 3)
		FUNC0(gspca_dev, 0x08, 0x09);
	else
		FUNC0(gspca_dev, 0x08, 0x08);

	/*
	 * Page1 register 80 sets the compression balance, normally we
	 * want / use 0x1c, but for 640x480@30fps we must allow the
	 * camera to use higher compression or we may run out of
	 * bandwidth.
	 */
	if (gspca_dev->pixfmt.width == 640 && val == 2)
		FUNC0(gspca_dev, 0x80, 0x01);
	else
		FUNC0(gspca_dev, 0x80, 0x1c);

	/* load registers to sensor (Bit 0, auto clear) */
	FUNC0(gspca_dev, 0x11, 0x01);
}