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
struct gspca_dev {scalar_t__* usb_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*) ; 

__attribute__((used)) static void FUNC4(struct gspca_dev *gspca_dev)
{
	int count = 50;

	while (--count > 0) {
		FUNC1(gspca_dev, 0x21, 1, 1);
		if (gspca_dev->usb_buf[0] != 0) {
			FUNC2(gspca_dev, 0x21, 0, 1, 0);
			FUNC1(gspca_dev, 0x21, 1, 1);
			FUNC3(gspca_dev);
			break;
		}
		FUNC0(10);
	}
}