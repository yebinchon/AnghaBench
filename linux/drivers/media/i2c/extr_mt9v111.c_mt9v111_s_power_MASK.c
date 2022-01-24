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
struct v4l2_subdev {int dummy; } ;
struct mt9v111_dev {int pwr_count; int /*<<< orphan*/  pwr_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct v4l2_subdev*) ; 
 int FUNC2 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct mt9v111_dev* FUNC5 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC6(struct v4l2_subdev *sd, int on)
{
	struct mt9v111_dev *mt9v111 = FUNC5(sd);
	int pwr_count;
	int ret = 0;

	FUNC3(&mt9v111->pwr_mutex);

	/*
	 * Make sure we're transitioning from 0 to 1, or viceversa,
	 * before actually changing the power state.
	 */
	pwr_count = mt9v111->pwr_count;
	pwr_count += on ? 1 : -1;
	if (pwr_count == !!on) {
		ret = on ? FUNC2(sd) :
			   FUNC1(sd);
		if (!ret)
			/* All went well, updated power counter. */
			mt9v111->pwr_count = pwr_count;

		FUNC4(&mt9v111->pwr_mutex);

		return ret;
	}

	/*
	 * Update power counter to keep track of how many nested calls we
	 * received.
	 */
	FUNC0(pwr_count < 0 || pwr_count > 1);
	mt9v111->pwr_count = pwr_count;

	FUNC4(&mt9v111->pwr_mutex);

	return ret;
}