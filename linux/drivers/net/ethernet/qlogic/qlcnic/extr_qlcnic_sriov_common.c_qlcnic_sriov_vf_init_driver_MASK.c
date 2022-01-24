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
typedef  scalar_t__ u8 ;
struct qlcnic_info {int /*<<< orphan*/  capabilities; int /*<<< orphan*/  op_mode; int /*<<< orphan*/  max_mtu; int /*<<< orphan*/  switch_mode; scalar_t__ phys_port; int /*<<< orphan*/  max_rx_mcast_mac_filters; } ;
struct qlcnic_hardware_context {int /*<<< orphan*/  capabilities; int /*<<< orphan*/  op_mode; int /*<<< orphan*/  max_mtu; int /*<<< orphan*/  switch_mode; scalar_t__ physical_port; int /*<<< orphan*/  fw_hal_version; int /*<<< orphan*/  pci_func; int /*<<< orphan*/  max_mc_count; } ;
struct qlcnic_adapter {struct qlcnic_hardware_context* ahw; TYPE_1__* pdev; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  QLCNIC_ADAPTER_INITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct qlcnic_adapter*) ; 
 int FUNC2 (struct qlcnic_adapter*,struct qlcnic_info*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct qlcnic_adapter*,struct qlcnic_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qlcnic_adapter*) ; 

__attribute__((used)) static int FUNC5(struct qlcnic_adapter *adapter)
{
	struct qlcnic_hardware_context *ahw = adapter->ahw;
	struct qlcnic_info nic_info;
	int err;

	err = FUNC3(adapter, &nic_info, 0);
	if (err)
		return err;

	ahw->max_mc_count = nic_info.max_rx_mcast_mac_filters;

	err = FUNC2(adapter, &nic_info, ahw->pci_func);
	if (err)
		return -EIO;

	if (FUNC1(adapter))
		return -EIO;

	FUNC4(adapter);
	adapter->flags |= QLCNIC_ADAPTER_INITIALIZED;
	FUNC0(&adapter->pdev->dev, "HAL Version: %d\n",
		 adapter->ahw->fw_hal_version);

	ahw->physical_port = (u8) nic_info.phys_port;
	ahw->switch_mode = nic_info.switch_mode;
	ahw->max_mtu = nic_info.max_mtu;
	ahw->op_mode = nic_info.op_mode;
	ahw->capabilities = nic_info.capabilities;
	return 0;
}