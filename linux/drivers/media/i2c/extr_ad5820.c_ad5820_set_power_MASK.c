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
struct ad5820_device {int power_count; int /*<<< orphan*/  power_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct ad5820_device*,int) ; 
 int FUNC2 (struct ad5820_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct ad5820_device* FUNC5 (struct v4l2_subdev*) ; 

__attribute__((used)) static int
FUNC6(struct v4l2_subdev *subdev, int on)
{
	struct ad5820_device *coil = FUNC5(subdev);
	int ret = 0;

	FUNC3(&coil->power_lock);

	/*
	 * If the power count is modified from 0 to != 0 or from != 0 to 0,
	 * update the power state.
	 */
	if (coil->power_count == !on) {
		ret = on ? FUNC2(coil, true) :
			FUNC1(coil, true);
		if (ret < 0)
			goto done;
	}

	/* Update the power count. */
	coil->power_count += on ? 1 : -1;
	FUNC0(coil->power_count < 0);

done:
	FUNC4(&coil->power_lock);
	return ret;
}