#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct v4l2_clk {int /*<<< orphan*/  lock; TYPE_1__* ops; scalar_t__ clk; } ;
struct TYPE_2__ {int (* get_rate ) (struct v4l2_clk*) ;} ;

/* Variables and functions */
 int ENOSYS ; 
 unsigned long FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct v4l2_clk*) ; 
 int FUNC4 (struct v4l2_clk*) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_clk*) ; 

unsigned long FUNC6(struct v4l2_clk *clk)
{
	int ret;

	if (clk->clk)
		return FUNC0(clk->clk);

	ret = FUNC4(clk);
	if (ret < 0)
		return ret;

	FUNC1(&clk->lock);
	if (!clk->ops->get_rate)
		ret = -ENOSYS;
	else
		ret = clk->ops->get_rate(clk);
	FUNC2(&clk->lock);

	FUNC5(clk);

	return ret;
}