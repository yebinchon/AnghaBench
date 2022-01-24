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
struct regmap {int dummy; } ;
struct isc_clk {struct regmap* regmap; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  ISC_CLKSR ; 
 unsigned int ISC_CLKSR_SIP ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct regmap*,int /*<<< orphan*/ ,unsigned int*) ; 
 scalar_t__ FUNC1 (unsigned long,unsigned long) ; 
 struct isc_clk* FUNC2 (struct clk_hw*) ; 
 unsigned long FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct clk_hw *hw)
{
	struct isc_clk *isc_clk = FUNC2(hw);
	struct regmap *regmap = isc_clk->regmap;
	unsigned long timeout = jiffies + FUNC3(1000);
	unsigned int status;

	while (FUNC1(jiffies, timeout)) {
		FUNC0(regmap, ISC_CLKSR, &status);
		if (!(status & ISC_CLKSR_SIP))
			return 0;

		FUNC4(10, 250);
	}

	return -ETIMEDOUT;
}