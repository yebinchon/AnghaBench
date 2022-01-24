#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int numerator; int denominator; } ;
struct vs6624 {TYPE_1__ frame_rate; } ;
struct v4l2_fract {int numerator; int denominator; } ;
struct v4l2_subdev_frame_interval {struct v4l2_fract interval; } ;
struct v4l2_subdev {int dummy; } ;

/* Variables and functions */
 int MAX_FRAME_RATE ; 
 int /*<<< orphan*/  VS6624_DISABLE_FR_DAMPER ; 
 int /*<<< orphan*/  VS6624_FR_DEN ; 
 int /*<<< orphan*/  VS6624_FR_NUM_LSB ; 
 int /*<<< orphan*/  VS6624_FR_NUM_MSB ; 
 struct vs6624* FUNC0 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd,
				   struct v4l2_subdev_frame_interval *ival)
{
	struct vs6624 *sensor = FUNC0(sd);
	struct v4l2_fract *tpf = &ival->interval;


	if (tpf->numerator == 0 || tpf->denominator == 0
		|| (tpf->denominator > tpf->numerator * MAX_FRAME_RATE)) {
		/* reset to max frame rate */
		tpf->numerator = 1;
		tpf->denominator = MAX_FRAME_RATE;
	}
	sensor->frame_rate.numerator = tpf->denominator;
	sensor->frame_rate.denominator = tpf->numerator;
	FUNC1(sd, VS6624_DISABLE_FR_DAMPER, 0x0);
	FUNC1(sd, VS6624_FR_NUM_MSB,
			sensor->frame_rate.numerator >> 8);
	FUNC1(sd, VS6624_FR_NUM_LSB,
			sensor->frame_rate.numerator & 0xFF);
	FUNC1(sd, VS6624_FR_DEN,
			sensor->frame_rate.denominator & 0xFF);
	return 0;
}