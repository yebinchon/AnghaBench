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
 unsigned char MVFP_MIRROR ; 
 int /*<<< orphan*/  REG_MVFP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ ,unsigned char*) ; 
 scalar_t__ FUNC2 (struct v4l2_subdev*,int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd, int value)
{
	unsigned char v = 0;
	int ret;

	ret = FUNC1(sd, REG_MVFP, &v);
	if (value)
		v |= MVFP_MIRROR;
	else
		v &= ~MVFP_MIRROR;
	FUNC0(10);  /* FIXME */
	ret += FUNC2(sd, REG_MVFP, v);
	return ret;
}