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
typedef  int u32 ;
struct isc_clk {scalar_t__ id; int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  ISC_CLKSR ; 
 scalar_t__ ISC_ISPCK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct isc_clk* FUNC4 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC5(struct clk_hw *hw)
{
	struct isc_clk *isc_clk = FUNC4(hw);
	u32 status;

	if (isc_clk->id == ISC_ISPCK)
		FUNC1(isc_clk->dev);

	FUNC3(isc_clk->regmap, ISC_CLKSR, &status);

	if (isc_clk->id == ISC_ISPCK)
		FUNC2(isc_clk->dev);

	return status & FUNC0(isc_clk->id) ? 1 : 0;
}