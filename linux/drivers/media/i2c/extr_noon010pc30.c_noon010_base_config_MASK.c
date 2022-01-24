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
 int /*<<< orphan*/  noon010_base_regs ; 
 int FUNC0 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct v4l2_subdev*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd)
{
	int ret = FUNC0(sd, noon010_base_regs);
	if (!ret)
		ret = FUNC2(sd);
	if (!ret)
		ret = FUNC1(sd, 1, 0);

	return ret;
}