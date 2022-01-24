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
typedef  int /*<<< orphan*/  u32 ;
struct v4l2_frmsize_stepwise {int /*<<< orphan*/  step_height; int /*<<< orphan*/  max_height; int /*<<< orphan*/  min_height; int /*<<< orphan*/  step_width; int /*<<< orphan*/  max_width; int /*<<< orphan*/  min_width; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(u32 *width, u32 *height,
				    const struct v4l2_frmsize_stepwise *frmsize)
{
	if (!frmsize)
		return;

	/*
	 * Clamp width/height to meet min/max constraints and round it up to
	 * macroblock alignment.
	 */
	*width = FUNC0(*width, frmsize->min_width, frmsize->max_width,
			       frmsize->step_width);
	*height = FUNC0(*height, frmsize->min_height, frmsize->max_height,
				frmsize->step_height);
}