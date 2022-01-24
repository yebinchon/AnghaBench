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
struct gspca_dev {int usb_err; int /*<<< orphan*/ * usb_buf; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct gspca_dev *gspca_dev, unsigned char *command)
{
	int retval;

	if (gspca_dev->usb_err < 0)
		return;
	FUNC0(gspca_dev->usb_buf, command, 2);
	retval = FUNC2(gspca_dev->dev,
			FUNC3(gspca_dev->dev, 3),
			gspca_dev->usb_buf, 2, NULL, 500);
	if (retval < 0) {
		FUNC1("command write [%02x] error %d\n",
		       gspca_dev->usb_buf[0], retval);
		gspca_dev->usb_err = retval;
	}
}