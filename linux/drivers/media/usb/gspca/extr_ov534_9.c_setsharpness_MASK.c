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
struct gspca_dev {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
 int FUNC0 (struct gspca_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int,int) ; 

__attribute__((used)) static void FUNC2(struct gspca_dev *gspca_dev, s32 val)
{
	if (val < 0) {				/* auto */
		val = FUNC0(gspca_dev, 0x42);	/* com17 */
		FUNC1(gspca_dev, 0xff, 0x00);
		FUNC1(gspca_dev, 0x42, val | 0x40);
				/* Edge enhancement strength auto adjust */
		return;
	}
	if (val != 0)
		val = 1 << (val - 1);
	FUNC1(gspca_dev, 0x3f,	/* edge - edge enhance. factor */
			val);
	val = FUNC0(gspca_dev, 0x42);		/* com17 */
	FUNC1(gspca_dev, 0xff, 0x00);
	FUNC1(gspca_dev, 0x42, val & 0xbf);
}