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
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int FUNC0 (struct gspca_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int,int) ; 

__attribute__((used)) static void FUNC2(struct gspca_dev *gspca_dev, s32 autogain)
{
	u8 val;

/*fixme: should adjust agc/awb/aec by different controls */
	val = FUNC0(gspca_dev, 0x13);		/* com8 */
	FUNC1(gspca_dev, 0xff, 0x00);
	if (autogain)
		val |= 0x05;		/* agc & aec */
	else
		val &= 0xfa;
	FUNC1(gspca_dev, 0x13, val);
}