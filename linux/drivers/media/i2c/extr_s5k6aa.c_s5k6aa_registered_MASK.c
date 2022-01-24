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
struct s5k6aa {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct s5k6aa*) ; 
 int FUNC1 (struct s5k6aa*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct s5k6aa*) ; 
 struct s5k6aa* FUNC6 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC7(struct v4l2_subdev *sd)
{
	struct s5k6aa *s5k6aa = FUNC6(sd);
	int ret;

	FUNC3(&s5k6aa->lock);
	ret = FUNC1(s5k6aa);
	if (!ret) {
		FUNC2(100);
		ret = FUNC5(s5k6aa);
		FUNC0(s5k6aa);
	}
	FUNC4(&s5k6aa->lock);

	return ret;
}