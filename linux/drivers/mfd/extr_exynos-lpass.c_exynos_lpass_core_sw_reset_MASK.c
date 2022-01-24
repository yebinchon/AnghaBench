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
struct exynos_lpass {int /*<<< orphan*/  top; } ;

/* Variables and functions */
 int /*<<< orphan*/  SFR_LPASS_CORE_SW_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(struct exynos_lpass *lpass, int mask)
{
	unsigned int val = 0;

	FUNC0(lpass->top, SFR_LPASS_CORE_SW_RESET, &val);

	val &= ~mask;
	FUNC1(lpass->top, SFR_LPASS_CORE_SW_RESET, val);

	FUNC2(100, 150);

	val |= mask;
	FUNC1(lpass->top, SFR_LPASS_CORE_SW_RESET, val);
}