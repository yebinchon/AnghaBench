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
struct gspca_dev {int* usb_buf; int /*<<< orphan*/  usb_err; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETIME ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*,int,int,int,int) ; 

__attribute__((used)) static void FUNC4(struct gspca_dev *gspca_dev)
{
	int i;

	i = 10;
	do {
		FUNC2(gspca_dev, 0x21, 0x0001, 1);
		FUNC1(10);
		if (gspca_dev->usb_buf[0] == 1) {
			FUNC3(gspca_dev, 0x21, 0x0000, 0x0001, 0x00);
			FUNC2(gspca_dev, 0x21, 0x0001, 1);
			return;
		}
	} while (--i > 0);
	FUNC0(gspca_dev, "wait_status_1 timeout\n");
	gspca_dev->usb_err = -ETIME;
}