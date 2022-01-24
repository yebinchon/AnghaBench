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
typedef  scalar_t__ u8 ;
struct isc_clk {scalar_t__ parent_id; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct clk_hw*) ; 
 struct isc_clk* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC2(struct clk_hw *hw, u8 index)
{
	struct isc_clk *isc_clk = FUNC1(hw);

	if (index >= FUNC0(hw))
		return -EINVAL;

	isc_clk->parent_id = index;

	return 0;
}