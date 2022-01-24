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
struct mt9p031 {scalar_t__ clk; int /*<<< orphan*/  regulators; scalar_t__ reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static void FUNC5(struct mt9p031 *mt9p031)
{
	if (mt9p031->reset) {
		FUNC2(mt9p031->reset, 1);
		FUNC4(1000, 2000);
	}

	FUNC3(FUNC0(mt9p031->regulators),
			       mt9p031->regulators);

	if (mt9p031->clk)
		FUNC1(mt9p031->clk);
}