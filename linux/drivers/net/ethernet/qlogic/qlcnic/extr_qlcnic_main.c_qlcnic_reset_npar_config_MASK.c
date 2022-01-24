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
typedef  int /*<<< orphan*/  u8 ;
struct qlcnic_npar_info {int /*<<< orphan*/  dest_npar; scalar_t__ enable_pm; int /*<<< orphan*/  max_bw; int /*<<< orphan*/  min_bw; int /*<<< orphan*/  eswitch_status; int /*<<< orphan*/  pci_func; } ;
struct qlcnic_info {int /*<<< orphan*/  max_tx_bw; int /*<<< orphan*/  min_tx_bw; } ;
struct qlcnic_adapter {struct qlcnic_npar_info* npars; TYPE_1__* ahw; int /*<<< orphan*/  need_fw_reset; } ;
struct TYPE_2__ {int total_nic_func; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qlcnic_info*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct qlcnic_adapter*) ; 
 int FUNC2 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct qlcnic_adapter*,struct qlcnic_info*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct qlcnic_adapter*,struct qlcnic_npar_info*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct qlcnic_adapter*,struct qlcnic_info*) ; 

int FUNC6(struct qlcnic_adapter *adapter)
{
	int i, err;
	struct qlcnic_npar_info *npar;
	struct qlcnic_info nic_info;
	u8 pci_func;

	if (FUNC1(adapter))
		if (!adapter->need_fw_reset)
			return 0;

	/* Set the NPAR config data after FW reset */
	for (i = 0; i < adapter->ahw->total_nic_func; i++) {
		npar = &adapter->npars[i];
		pci_func = npar->pci_func;
		if (!adapter->npars[i].eswitch_status)
			continue;

		FUNC0(&nic_info, 0, sizeof(struct qlcnic_info));
		err = FUNC3(adapter, &nic_info, pci_func);
		if (err)
			return err;
		nic_info.min_tx_bw = npar->min_bw;
		nic_info.max_tx_bw = npar->max_bw;
		err = FUNC5(adapter, &nic_info);
		if (err)
			return err;

		if (npar->enable_pm) {
			err = FUNC2(adapter,
							   npar->dest_npar, 1,
							   pci_func);
			if (err)
				return err;
		}
		err = FUNC4(adapter, npar, pci_func);
		if (err)
			return err;
	}
	return 0;
}