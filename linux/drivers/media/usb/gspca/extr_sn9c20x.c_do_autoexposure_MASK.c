#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct sd {int exposure_step; int older_step; int old_step; TYPE_1__* exposure; } ;
struct gspca_dev {int dummy; } ;
typedef  scalar_t__ s32 ;
typedef  scalar_t__ s16 ;
struct TYPE_3__ {scalar_t__ maximum; scalar_t__ minimum; } ;

/* Variables and functions */
 scalar_t__ MAX_AVG_LUM ; 
 scalar_t__ MIN_AVG_LUM ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct gspca_dev *gspca_dev, u16 avg_lum)
{
	struct sd *sd = (struct sd *) gspca_dev;
	s32 cur_exp = FUNC0(sd->exposure);
	s32 max = sd->exposure->maximum - sd->exposure_step;
	s32 min = sd->exposure->minimum + sd->exposure_step;
	s16 new_exp;

	/*
	 * some hardcoded values are present
	 * like those for maximal/minimal exposure
	 * and exposure steps
	 */
	if (avg_lum < MIN_AVG_LUM) {
		if (cur_exp > max)
			return;

		new_exp = cur_exp + sd->exposure_step;
		if (new_exp > max)
			new_exp = max;
		if (new_exp < min)
			new_exp = min;
		FUNC1(sd->exposure, new_exp);

		sd->older_step = sd->old_step;
		sd->old_step = 1;

		if (sd->old_step ^ sd->older_step)
			sd->exposure_step /= 2;
		else
			sd->exposure_step += 2;
	}
	if (avg_lum > MAX_AVG_LUM) {
		if (cur_exp < min)
			return;
		new_exp = cur_exp - sd->exposure_step;
		if (new_exp > max)
			new_exp = max;
		if (new_exp < min)
			new_exp = min;
		FUNC1(sd->exposure, new_exp);
		sd->older_step = sd->old_step;
		sd->old_step = 0;

		if (sd->old_step ^ sd->older_step)
			sd->exposure_step /= 2;
		else
			sd->exposure_step += 2;
	}
}