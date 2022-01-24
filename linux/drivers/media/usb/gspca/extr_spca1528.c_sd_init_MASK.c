#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct gspca_dev {int usb_err; int /*<<< orphan*/ * usb_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_PROBE ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*,int,int,int) ; 

__attribute__((used)) static int FUNC4(struct gspca_dev *gspca_dev)
{
	FUNC3(gspca_dev, 0x00, 0x0001, 0x2067);
	FUNC3(gspca_dev, 0x00, 0x00d0, 0x206b);
	FUNC3(gspca_dev, 0x00, 0x0000, 0x206c);
	FUNC3(gspca_dev, 0x00, 0x0001, 0x2069);
	FUNC1(8);
	FUNC3(gspca_dev, 0x00, 0x00c0, 0x206b);
	FUNC3(gspca_dev, 0x00, 0x0000, 0x206c);
	FUNC3(gspca_dev, 0x00, 0x0001, 0x2069);

	FUNC2(gspca_dev, 0x20, 0x0000, 1);
	FUNC2(gspca_dev, 0x20, 0x0000, 5);
	FUNC2(gspca_dev, 0x23, 0x0000, 64);
	FUNC0(gspca_dev, D_PROBE, "%s%s\n", &gspca_dev->usb_buf[0x1c],
		  &gspca_dev->usb_buf[0x30]);
	FUNC2(gspca_dev, 0x23, 0x0001, 64);
	return gspca_dev->usb_err;
}