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
struct s5k6a3 {int power_count; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct s5k6a3*) ; 
 int FUNC1 (struct s5k6a3*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct s5k6a3* FUNC4 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd, int on)
{
	struct s5k6a3 *sensor = FUNC4(sd);
	int ret = 0;

	FUNC2(&sensor->lock);

	if (sensor->power_count == !on) {
		if (on)
			ret = FUNC1(sensor);
		else
			ret = FUNC0(sensor);

		if (ret == 0)
			sensor->power_count += on ? 1 : -1;
	}

	FUNC3(&sensor->lock);
	return ret;
}