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
struct ef4_nic {int /*<<< orphan*/  net_dev; TYPE_1__* pci_dev; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  dev_attr_phy_type ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct ef4_nic*) ; 
 struct ef4_nic* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct ef4_nic *efx)
{
	if (!efx->net_dev)
		return;

	FUNC0(FUNC3(efx->net_dev) != efx);

	if (FUNC2(efx)) {
		FUNC5(efx->name, FUNC4(efx->pci_dev), sizeof(efx->name));
		FUNC1(&efx->pci_dev->dev, &dev_attr_phy_type);
		FUNC6(efx->net_dev);
	}
}