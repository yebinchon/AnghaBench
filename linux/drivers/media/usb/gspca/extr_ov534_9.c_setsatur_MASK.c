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
typedef  size_t s32 ;

/* Variables and functions */
 int FUNC0 (struct gspca_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int,int) ; 

__attribute__((used)) static void FUNC2(struct gspca_dev *gspca_dev, s32 val)
{
	u8 val1, val2, val3;
	static const u8 matrix[5][2] = {
		{0x14, 0x38},
		{0x1e, 0x54},
		{0x28, 0x70},
		{0x32, 0x8c},
		{0x48, 0x90}
	};

	val1 = matrix[val][0];
	val2 = matrix[val][1];
	val3 = val1 + val2;
	FUNC1(gspca_dev, 0x4f, val3);	/* matrix coeff */
	FUNC1(gspca_dev, 0x50, val3);
	FUNC1(gspca_dev, 0x51, 0x00);
	FUNC1(gspca_dev, 0x52, val1);
	FUNC1(gspca_dev, 0x53, val2);
	FUNC1(gspca_dev, 0x54, val3);
	FUNC1(gspca_dev, 0x58, 0x1a);	/* mtxs - coeff signs */

	val1 = FUNC0(gspca_dev, 0x41);	/* com16 */
	FUNC1(gspca_dev, 0xff, 0x00);
	FUNC1(gspca_dev, 0x41, val1);
}