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
struct TYPE_2__ {int /*<<< orphan*/  intrcount; } ;
struct brcmf_sdio {int dpc_triggered; int /*<<< orphan*/  datawork; int /*<<< orphan*/  brcmf_wq; int /*<<< orphan*/  intr; int /*<<< orphan*/  ipend; TYPE_1__ sdcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (struct brcmf_sdio*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(struct brcmf_sdio *bus)
{
	FUNC1(TRACE, "Enter\n");

	if (!bus) {
		FUNC2("bus is null pointer, exiting\n");
		return;
	}

	/* Count the interrupt call */
	bus->sdcnt.intrcount++;
	if (FUNC4())
		FUNC0(&bus->ipend, 1);
	else
		if (FUNC3(bus)) {
			FUNC2("failed backplane access\n");
		}

	/* Disable additional interrupts (is this needed now)? */
	if (!bus->intr)
		FUNC2("isr w/o interrupt configured!\n");

	bus->dpc_triggered = true;
	FUNC5(bus->brcmf_wq, &bus->datawork);
}