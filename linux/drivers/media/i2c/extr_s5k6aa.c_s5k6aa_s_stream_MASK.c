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
struct s5k6aa {int streaming; int /*<<< orphan*/  lock; scalar_t__ apply_crop; int /*<<< orphan*/  preset; scalar_t__ apply_cfg; } ;

/* Variables and functions */
 int FUNC0 (struct s5k6aa*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct s5k6aa*) ; 
 int FUNC4 (struct s5k6aa*,int /*<<< orphan*/ ) ; 
 struct s5k6aa* FUNC5 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC6(struct v4l2_subdev *sd, int on)
{
	struct s5k6aa *s5k6aa = FUNC5(sd);
	int ret = 0;

	FUNC1(&s5k6aa->lock);

	if (s5k6aa->streaming == !on) {
		if (!ret && s5k6aa->apply_cfg)
			ret = FUNC4(s5k6aa, s5k6aa->preset);
		if (s5k6aa->apply_crop)
			ret = FUNC3(s5k6aa);
		if (!ret)
			ret = FUNC0(s5k6aa, !!on);
	}
	FUNC2(&s5k6aa->lock);

	return ret;
}