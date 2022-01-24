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
struct clk_hw {int dummy; } ;
struct cam_clk {TYPE_1__* fmd; } ;
struct TYPE_2__ {int /*<<< orphan*/ * pmf; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct cam_clk* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC2(struct clk_hw *hw)
{
	struct cam_clk *camclk = FUNC1(hw);
	int ret;

	if (camclk->fmd->pmf == NULL)
		return -ENODEV;

	ret = FUNC0(camclk->fmd->pmf);
	return ret < 0 ? ret : 0;
}