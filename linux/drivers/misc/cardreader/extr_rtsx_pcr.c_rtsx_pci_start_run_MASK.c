#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rtsx_pcr {scalar_t__ state; int /*<<< orphan*/  idle_work; TYPE_1__* ops; scalar_t__ remove_pci; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* enable_auto_blink ) (struct rtsx_pcr*) ;} ;

/* Variables and functions */
 scalar_t__ PDEV_STAT_RUN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_pcr*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_pcr*) ; 
 int /*<<< orphan*/  system_wq ; 

void FUNC4(struct rtsx_pcr *pcr)
{
	/* If pci device removed, don't queue idle work any more */
	if (pcr->remove_pci)
		return;

	if (pcr->state != PDEV_STAT_RUN) {
		pcr->state = PDEV_STAT_RUN;
		if (pcr->ops->enable_auto_blink)
			pcr->ops->enable_auto_blink(pcr);
		FUNC2(pcr);
	}

	FUNC0(system_wq, &pcr->idle_work, FUNC1(200));
}