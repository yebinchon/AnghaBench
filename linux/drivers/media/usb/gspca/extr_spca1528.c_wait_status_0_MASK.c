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
struct gspca_dev {scalar_t__* usb_buf; int /*<<< orphan*/  usb_err; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETIME ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int,int,int) ; 

__attribute__((used)) static void FUNC3(struct gspca_dev *gspca_dev)
{
	int i, w;

	i = 16;
	w = 0;
	do {
		FUNC2(gspca_dev, 0x21, 0x0000, 1);
		if (gspca_dev->usb_buf[0] == 0)
			return;
		w += 15;
		FUNC1(w);
	} while (--i > 0);
	FUNC0(gspca_dev, "wait_status_0 timeout\n");
	gspca_dev->usb_err = -ETIME;
}