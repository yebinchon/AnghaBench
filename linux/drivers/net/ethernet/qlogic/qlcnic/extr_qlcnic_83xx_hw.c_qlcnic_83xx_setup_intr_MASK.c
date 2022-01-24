#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct qlcnic_intrpt_config {int dummy; } ;
struct qlcnic_hardware_context {int num_msix; scalar_t__ pci_func; TYPE_2__* intr_tbl; } ;
struct qlcnic_adapter {int flags; TYPE_1__* pdev; struct qlcnic_hardware_context* ahw; void* drv_tx_rings; void* drv_sds_rings; } ;
struct TYPE_4__ {int id; scalar_t__ src; int /*<<< orphan*/  type; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  QLCNIC_INTRPT_INTX ; 
 int /*<<< orphan*/  QLCNIC_INTRPT_MSIX ; 
 int QLCNIC_MSIX_ENABLED ; 
 void* QLCNIC_SINGLE_RING ; 
 int QLCNIC_TSS_RSS ; 
 scalar_t__ QLC_MAX_LEGACY_FUNC_SUPP ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int FUNC2 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_adapter*) ; 
 int FUNC4 (struct qlcnic_adapter*,int) ; 
 int FUNC5 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC6 (struct qlcnic_adapter*) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct qlcnic_adapter *adapter)
{
	struct qlcnic_hardware_context *ahw = adapter->ahw;
	int err, i, num_msix;

	if (adapter->flags & QLCNIC_TSS_RSS) {
		err = FUNC5(adapter);
		if (err < 0)
			return err;
		num_msix = ahw->num_msix;
	} else {
		num_msix = FUNC2(adapter);

		err = FUNC4(adapter, num_msix);
		if (err == -ENOMEM)
			return err;

		if (adapter->flags & QLCNIC_MSIX_ENABLED) {
			num_msix = ahw->num_msix;
		} else {
			if (FUNC6(adapter))
				return -EINVAL;
			num_msix = 1;
			adapter->drv_sds_rings = QLCNIC_SINGLE_RING;
			adapter->drv_tx_rings = QLCNIC_SINGLE_RING;
		}
	}

	/* setup interrupt mapping table for fw */
	ahw->intr_tbl =
		FUNC7(FUNC0(num_msix,
				   sizeof(struct qlcnic_intrpt_config)));
	if (!ahw->intr_tbl)
		return -ENOMEM;

	if (!(adapter->flags & QLCNIC_MSIX_ENABLED)) {
		if (adapter->ahw->pci_func >= QLC_MAX_LEGACY_FUNC_SUPP) {
			FUNC1(&adapter->pdev->dev, "PCI function number 8 and higher are not supported with legacy interrupt, func 0x%x\n",
				ahw->pci_func);
			return -EOPNOTSUPP;
		}

		FUNC3(adapter);
	}

	for (i = 0; i < num_msix; i++) {
		if (adapter->flags & QLCNIC_MSIX_ENABLED)
			ahw->intr_tbl[i].type = QLCNIC_INTRPT_MSIX;
		else
			ahw->intr_tbl[i].type = QLCNIC_INTRPT_INTX;
		ahw->intr_tbl[i].id = i;
		ahw->intr_tbl[i].src = 0;
	}

	return 0;
}