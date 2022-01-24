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
typedef  int /*<<< orphan*/  u32 ;
struct isc_clk {int /*<<< orphan*/  lock; int /*<<< orphan*/  regmap; int /*<<< orphan*/  id; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISC_CLKDIS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct isc_clk* FUNC4 (struct clk_hw*) ; 

__attribute__((used)) static void FUNC5(struct clk_hw *hw)
{
	struct isc_clk *isc_clk = FUNC4(hw);
	u32 id = isc_clk->id;
	unsigned long flags;

	FUNC2(&isc_clk->lock, flags);
	FUNC1(isc_clk->regmap, ISC_CLKDIS, FUNC0(id));
	FUNC3(&isc_clk->lock, flags);
}