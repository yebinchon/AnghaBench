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
struct pci_dev {int dummy; } ;
struct efx_nic {int /*<<< orphan*/  net_dev; TYPE_1__* type; int /*<<< orphan*/  state; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* sriov_fini ) (struct efx_nic*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  STATE_UNINIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC5 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC6 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC7 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 struct efx_nic* FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct efx_nic*) ; 

__attribute__((used)) static void FUNC15(struct pci_dev *pci_dev)
{
	struct efx_nic *efx;

	efx = FUNC11(pci_dev);
	if (!efx)
		return;

	/* Mark the NIC as fini, then stop the interface */
	FUNC12();
	FUNC2(efx);
	FUNC0(efx->net_dev);
	FUNC1(efx);
	efx->state = STATE_UNINIT;
	FUNC13();

	if (efx->type->sriov_fini)
		efx->type->sriov_fini(efx);

	FUNC7(efx);

	FUNC5(efx);

	FUNC6(efx);

	FUNC3(efx);
	FUNC9(efx, drv, efx->net_dev, "shutdown successful\n");

	FUNC4(efx);
	FUNC8(efx->net_dev);

	FUNC10(pci_dev);
}