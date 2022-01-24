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
struct isp_xclk {int enabled; int /*<<< orphan*/  lock; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct isp_xclk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct isp_xclk* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static void FUNC4(struct clk_hw *hw)
{
	struct isp_xclk *xclk = FUNC3(hw);
	unsigned long flags;

	FUNC1(&xclk->lock, flags);
	FUNC0(xclk, 0);
	xclk->enabled = false;
	FUNC2(&xclk->lock, flags);
}