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
struct mt9p031 {scalar_t__ reset; int /*<<< orphan*/  regulators; scalar_t__ clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct mt9p031 *mt9p031)
{
	int ret;

	/* Ensure RESET_BAR is active */
	if (mt9p031->reset) {
		FUNC2(mt9p031->reset, 1);
		FUNC5(1000, 2000);
	}

	/* Bring up the supplies */
	ret = FUNC4(FUNC0(mt9p031->regulators),
				   mt9p031->regulators);
	if (ret < 0)
		return ret;

	/* Enable clock */
	if (mt9p031->clk) {
		ret = FUNC1(mt9p031->clk);
		if (ret) {
			FUNC3(FUNC0(mt9p031->regulators),
					       mt9p031->regulators);
			return ret;
		}
	}

	/* Now RESET_BAR must be high */
	if (mt9p031->reset) {
		FUNC2(mt9p031->reset, 0);
		FUNC5(1000, 2000);
	}

	return 0;
}