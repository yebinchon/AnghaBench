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
struct ath_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static bool FUNC3(struct ath_hw *ah, u32 pmu_reg, int pmu_set)
{
	int timeout = 100;

	while (pmu_set != FUNC0(ah, pmu_reg)) {
		if (timeout-- == 0)
			return false;
		FUNC1(ah, pmu_reg, pmu_set);
		FUNC2(10);
	}

	return true;
}