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
struct s_smc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  B2_RTM_CRTL ; 
 int /*<<< orphan*/  B2_RTM_INI ; 
 int /*<<< orphan*/  TIM_START ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct s_smc *smc)
{
	FUNC1(FUNC0(B2_RTM_INI),0) ;		/* timer = 0 */
	FUNC2(FUNC0(B2_RTM_CRTL),TIM_START) ;	/* enable IRQ */
}