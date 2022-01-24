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
struct fimc_is {int /*<<< orphan*/ * clocks; } ;

/* Variables and functions */
 int ISS_GATE_CLKS_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * fimc_is_clocks ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct fimc_is *is)
{
	int i;

	for (i = 0; i < ISS_GATE_CLKS_MAX; i++) {
		if (!FUNC0(is->clocks[i])) {
			FUNC1(is->clocks[i]);
			FUNC2("disabled clock: %s\n", fimc_is_clocks[i]);
		}
	}
}