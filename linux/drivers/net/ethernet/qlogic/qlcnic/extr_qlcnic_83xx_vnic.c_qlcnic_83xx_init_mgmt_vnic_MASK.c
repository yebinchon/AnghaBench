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
struct qlcnic_npar_info {int /*<<< orphan*/  mac; int /*<<< orphan*/  max_bw; int /*<<< orphan*/  min_bw; int /*<<< orphan*/  phy_port; int /*<<< orphan*/  type; int /*<<< orphan*/  active; int /*<<< orphan*/  pci_func; } ;
struct qlcnic_hardware_context {int total_nic_func; int msix_supported; int /*<<< orphan*/  fw_hal_version; int /*<<< orphan*/  max_pci_func; } ;
struct qlcnic_adapter {int flags; struct qlcnic_npar_info* npars; TYPE_1__* pdev; struct qlcnic_hardware_context* ahw; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int EIO ; 
 int QLCNIC_ADAPTER_INITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC4 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC5 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC6 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC7 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC8 (struct qlcnic_adapter*) ; 
 scalar_t__ qlcnic_use_msi_x ; 

__attribute__((used)) static int FUNC9(struct qlcnic_adapter *adapter)
{
	struct qlcnic_hardware_context *ahw = adapter->ahw;
	struct device *dev = &adapter->pdev->dev;
	struct qlcnic_npar_info *npar;
	int i, err = -EIO;

	FUNC3(adapter);

	if (!(adapter->flags & QLCNIC_ADAPTER_INITIALIZED)) {
		if (FUNC6(adapter))
			return err;

		npar = adapter->npars;

		for (i = 0; i < ahw->total_nic_func; i++, npar++) {
			FUNC0(dev, "id:%d active:%d type:%d port:%d min_bw:%d max_bw:%d mac_addr:%pM\n",
				 npar->pci_func, npar->active, npar->type,
				 npar->phy_port, npar->min_bw, npar->max_bw,
				 npar->mac);
		}

		FUNC0(dev, "Max functions = %d, active functions = %d\n",
			 ahw->max_pci_func, ahw->total_nic_func);

		if (FUNC5(adapter))
			return err;

		if (FUNC8(adapter))
			return err;
	} else {
		if (FUNC7(adapter))
			return err;
	}

	if (FUNC4(adapter))
		return err;

	FUNC1(adapter);
	ahw->msix_supported = qlcnic_use_msi_x ? 1 : 0;
	adapter->flags |= QLCNIC_ADAPTER_INITIALIZED;
	FUNC2(adapter, 1);

	FUNC0(dev, "HAL Version: %d, Management function\n",
		 ahw->fw_hal_version);

	return 0;
}