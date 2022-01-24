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
typedef  int /*<<< orphan*/  u8 ;
struct gspca_dev {int /*<<< orphan*/ * usb_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_PROBE ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct gspca_dev*,int) ; 
 int FUNC2 (struct gspca_dev*,int) ; 

__attribute__((used)) static int FUNC3(struct gspca_dev *gspca_dev, u8 reg, int verbose)
{
	int err_code;

	gspca_dev->usb_buf[0] = reg;
	err_code = FUNC2(gspca_dev, 1);
	if (err_code < 0)
		return err_code;

	err_code = FUNC1(gspca_dev, 16);
	if (err_code < 0)
		return err_code;

	if (verbose)
		FUNC0(gspca_dev, D_PROBE, "Register: %02x reads %02x%02x%02x\n",
			  reg,
			  gspca_dev->usb_buf[0],
			  gspca_dev->usb_buf[1],
			  gspca_dev->usb_buf[2]);

	return 0;
}