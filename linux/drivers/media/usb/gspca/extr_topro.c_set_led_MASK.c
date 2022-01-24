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
typedef  int u8 ;
struct gspca_dev {int* usb_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  TP6800_R18_GPIO_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct gspca_dev *gspca_dev, int on)
{
	u8 data;

	FUNC0(gspca_dev, TP6800_R18_GPIO_DATA);
	data = gspca_dev->usb_buf[0];
	if (on)
		data &= ~0x40;
	else
		data |= 0x40;
	FUNC1(gspca_dev, TP6800_R18_GPIO_DATA, data);
}