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
struct sd {int webcam; } ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
#define  Kr651us 129 
#define  P35u 128 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int,int*,int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct gspca_dev *gspca_dev, u8 val)
{
	struct sd *sd = (struct sd *) gspca_dev;
	u8 v[2];

	switch (sd->webcam) {
	case P35u:
		FUNC0(gspca_dev, 0x1026, &val, 1);
		break;
	case Kr651us:
		/* 0 - 253 */
		val = FUNC1(val);
		v[0] = val << 3;
		v[1] = val >> 5;
		FUNC0(gspca_dev, 0x101d, v, 2);	/* SIF reg0/1 (AGC) */
		break;
	}
}