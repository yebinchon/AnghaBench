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
typedef  int u32 ;
struct v4l2_fract {int /*<<< orphan*/  denominator; int /*<<< orphan*/  numerator; } ;
struct v4l2_bt_timings {int standards; int /*<<< orphan*/  interlaced; int /*<<< orphan*/  polarities; int /*<<< orphan*/  vsync; int /*<<< orphan*/  height; int /*<<< orphan*/  width; scalar_t__ pixelclock; } ;
struct v4l2_dv_timings {struct v4l2_bt_timings bt; } ;

/* Variables and functions */
 int FUNC0 (struct v4l2_bt_timings*) ; 
 int FUNC1 (struct v4l2_bt_timings*) ; 
 int V4L2_DV_BT_STD_CVT ; 
 int V4L2_DV_BT_STD_GTF ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_dv_timings*) ; 
 scalar_t__ FUNC4 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_fract,struct v4l2_dv_timings*) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_dv_timings*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vivid_dv_timings_cap ; 

__attribute__((used)) static bool FUNC6(struct v4l2_dv_timings *timings)
{
	struct v4l2_bt_timings *bt = &timings->bt;
	u32 total_h_pixel;
	u32 total_v_lines;
	u32 h_freq;

	if (!FUNC5(timings, &vivid_dv_timings_cap,
				NULL, NULL))
		return false;

	total_h_pixel = FUNC1(bt);
	total_v_lines = FUNC0(bt);

	h_freq = (u32)bt->pixelclock / total_h_pixel;

	if (bt->standards == 0 || (bt->standards & V4L2_DV_BT_STD_CVT)) {
		if (FUNC3(total_v_lines, h_freq, bt->vsync, bt->width,
				    bt->polarities, bt->interlaced, timings))
			return true;
	}

	if (bt->standards == 0 || (bt->standards & V4L2_DV_BT_STD_GTF)) {
		struct v4l2_fract aspect_ratio;

		FUNC2(bt->width, bt->height,
				  &aspect_ratio.numerator,
				  &aspect_ratio.denominator);
		if (FUNC4(total_v_lines, h_freq, bt->vsync,
				    bt->polarities, bt->interlaced,
				    aspect_ratio, timings))
			return true;
	}
	return false;
}