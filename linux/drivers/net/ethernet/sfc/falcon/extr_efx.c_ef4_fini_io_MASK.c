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
struct ef4_nic {int /*<<< orphan*/  pci_dev; scalar_t__ membase_phys; TYPE_1__* type; int /*<<< orphan*/ * membase; int /*<<< orphan*/  net_dev; } ;
struct TYPE_2__ {int mem_bar; } ;

/* Variables and functions */
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ef4_nic *efx)
{
	int bar;

	FUNC1(efx, drv, efx->net_dev, "shutting down I/O\n");

	if (efx->membase) {
		FUNC0(efx->membase);
		efx->membase = NULL;
	}

	if (efx->membase_phys) {
		bar = efx->type->mem_bar;
		FUNC3(efx->pci_dev, bar);
		efx->membase_phys = 0;
	}

	/* Don't disable bus-mastering if VFs are assigned */
	if (!FUNC4(efx->pci_dev))
		FUNC2(efx->pci_dev);
}