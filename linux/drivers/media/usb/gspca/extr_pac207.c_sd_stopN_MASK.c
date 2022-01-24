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
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ led_invert ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int,int) ; 

__attribute__((used)) static void FUNC1(struct gspca_dev *gspca_dev)
{
	u8 mode;

	/* mode: Image Format (Bit 0), LED (1), Compr. test mode (2) */
	if (led_invert)
		mode = 0x02;
	else
		mode = 0x00;
	FUNC0(gspca_dev, 0x40, 0x00); /* Stop ISO pipe */
	FUNC0(gspca_dev, 0x41, mode); /* Turn off LED */
	FUNC0(gspca_dev, 0x0f, 0x00); /* Power Control */
}