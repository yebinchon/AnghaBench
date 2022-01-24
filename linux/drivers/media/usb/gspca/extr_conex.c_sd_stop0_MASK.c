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
struct gspca_dev {scalar_t__* usb_buf; int /*<<< orphan*/  present; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int,int) ; 

__attribute__((used)) static void FUNC2(struct gspca_dev *gspca_dev)
{
	int retry = 50;

	if (!gspca_dev->present)
		return;
	FUNC1(gspca_dev, 0x0000, 0x00);
	FUNC0(gspca_dev, 0x0002, 1);
	FUNC1(gspca_dev, 0x0053, 0x00);

	while (retry--) {
/*		reg_r(gspca_dev, 0x0002, 1);*/
		FUNC0(gspca_dev, 0x0053, 1);
		if (gspca_dev->usb_buf[0] == 0)
			break;
	}
	FUNC1(gspca_dev, 0x0000, 0x00);
	FUNC0(gspca_dev, 0x0002, 1);

	FUNC1(gspca_dev, 0x0010, 0x00);
	FUNC0(gspca_dev, 0x0033, 1);
	FUNC1(gspca_dev, 0x00fc, 0xe0);
}