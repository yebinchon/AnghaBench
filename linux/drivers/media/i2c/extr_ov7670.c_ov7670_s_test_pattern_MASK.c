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
 int FUNC0 (int) ; 
 int /*<<< orphan*/  REG_SCALING_XSC ; 
 int /*<<< orphan*/  REG_SCALING_YSC ; 
 int /*<<< orphan*/  TEST_PATTTERN_0 ; 
 int /*<<< orphan*/  TEST_PATTTERN_1 ; 
 int FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd, int value)
{
	int ret;

	ret = FUNC1(sd, REG_SCALING_XSC, TEST_PATTTERN_0,
				value & FUNC0(0) ? TEST_PATTTERN_0 : 0);
	if (ret)
		return ret;

	return FUNC1(sd, REG_SCALING_YSC, TEST_PATTTERN_1,
				value & FUNC0(1) ? TEST_PATTTERN_1 : 0);
}