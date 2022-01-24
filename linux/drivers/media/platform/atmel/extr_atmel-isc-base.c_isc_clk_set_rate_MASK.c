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
typedef  scalar_t__ u32 ;
struct isc_clk {scalar_t__ div; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long,unsigned long) ; 
 int EINVAL ; 
 scalar_t__ ISC_CLK_MAX_DIV ; 
 struct isc_clk* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC2(struct clk_hw *hw,
			     unsigned long rate,
			     unsigned long parent_rate)
{
	struct isc_clk *isc_clk = FUNC1(hw);
	u32 div;

	if (!rate)
		return -EINVAL;

	div = FUNC0(parent_rate, rate);
	if (div > (ISC_CLK_MAX_DIV + 1) || !div)
		return -EINVAL;

	isc_clk->div = div - 1;

	return 0;
}