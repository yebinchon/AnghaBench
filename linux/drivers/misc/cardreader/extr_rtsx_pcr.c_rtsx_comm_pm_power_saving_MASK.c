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
struct rtsx_cr_option {int /*<<< orphan*/  l1_snooze_delay; int /*<<< orphan*/  ltr_l1off_latency; scalar_t__ ltr_enabled; } ;
struct rtsx_pcr {struct rtsx_cr_option option; } ;

/* Variables and functions */
 int /*<<< orphan*/  L1_SNOOZE_TEST_EN ; 
 int /*<<< orphan*/  LTR_L1SS_PWR_GATE_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct rtsx_pcr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_pcr*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_pcr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_pcr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct rtsx_pcr *pcr)
{
	struct rtsx_cr_option *option = &pcr->option;

	if (option->ltr_enabled) {
		u32 latency = option->ltr_l1off_latency;

		if (FUNC1(pcr, L1_SNOOZE_TEST_EN))
			FUNC0(option->l1_snooze_delay);

		FUNC4(pcr, latency);
	}

	if (FUNC1(pcr, LTR_L1SS_PWR_GATE_EN))
		FUNC3(pcr, 0);

	FUNC2(pcr);
}