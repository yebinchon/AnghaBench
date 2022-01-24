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
struct sd {scalar_t__ bridge; scalar_t__ sensor; } ;
struct gspca_dev {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
 scalar_t__ BRIDGE_TP6810 ; 
 int /*<<< orphan*/  CX0342_AUTO_ADC_CALIB ; 
 scalar_t__ SENSOR_CX0342 ; 
 int TP6800_R3F_FRAME_RATE ; 
 int FUNC0 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*,int,int) ; 

__attribute__((used)) static void FUNC4(struct gspca_dev *gspca_dev, s32 val)
{
	struct sd *sd = (struct sd *) gspca_dev;
	u8 fr_idx;

	fr_idx = FUNC0(gspca_dev);

	if (sd->bridge == BRIDGE_TP6810) {
		FUNC2(gspca_dev, 0x7b);
		FUNC3(gspca_dev, 0x7b,
			sd->sensor == SENSOR_CX0342 ? 0x10 : 0x90);
		if (val >= 128)
			fr_idx = 0xf0;		/* lower frame rate */
	}

	FUNC3(gspca_dev, TP6800_R3F_FRAME_RATE, fr_idx);

	if (sd->sensor == SENSOR_CX0342)
		FUNC1(gspca_dev, CX0342_AUTO_ADC_CALIB, 0x01);
}