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
struct v4l2_subdev {int /*<<< orphan*/  ctrl_handler; } ;
struct s5k6aa {int power; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct s5k6aa*) ; 
 int FUNC1 (struct s5k6aa*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct v4l2_subdev*) ; 
 struct s5k6aa* FUNC5 (struct v4l2_subdev*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct v4l2_subdev *sd, int on)
{
	struct s5k6aa *s5k6aa = FUNC5(sd);
	int ret = 0;

	FUNC2(&s5k6aa->lock);

	if (s5k6aa->power == !on) {
		if (on) {
			ret = FUNC1(s5k6aa);
			if (!ret)
				ret = FUNC4(sd);
		} else {
			ret = FUNC0(s5k6aa);
		}

		if (!ret)
			s5k6aa->power += on ? 1 : -1;
	}

	FUNC3(&s5k6aa->lock);

	if (!on || ret || s5k6aa->power != 1)
		return ret;

	return FUNC6(sd->ctrl_handler);
}