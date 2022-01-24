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

/* Variables and functions */
 scalar_t__ FUNC0 (struct v4l2_subdev*) ; 
 int FUNC1 (struct v4l2_subdev*) ; 
 int FUNC2 (struct v4l2_subdev*) ; 
 int FUNC3 (struct v4l2_subdev*) ; 
 int FUNC4 (struct v4l2_subdev*) ; 
 int FUNC5 (struct v4l2_subdev*) ; 

__attribute__((used)) static inline bool FUNC6(struct v4l2_subdev *sd)
{
	bool ret;

	ret = FUNC4(sd);

	ret |= FUNC2(sd);
	ret |= FUNC1(sd);

	if (FUNC0(sd)) {
		ret |= FUNC3(sd);
		ret |= FUNC5(sd);
	}

	return ret;
}