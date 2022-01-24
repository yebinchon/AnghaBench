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
struct rtsx_cr_option {int /*<<< orphan*/  ltr_active_latency; scalar_t__ ltr_enabled; } ;
struct rtsx_pcr {struct rtsx_cr_option option; } ;

/* Variables and functions */
 int /*<<< orphan*/  LTR_L1SS_PWR_GATE_EN ; 
 scalar_t__ FUNC0 (struct rtsx_pcr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_pcr*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_pcr*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_pcr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct rtsx_pcr *pcr)
{
	struct rtsx_cr_option *option = &pcr->option;

	FUNC1(pcr);

	if (option->ltr_enabled)
		FUNC3(pcr, option->ltr_active_latency);

	if (FUNC0(pcr, LTR_L1SS_PWR_GATE_EN))
		FUNC2(pcr, 1);
}