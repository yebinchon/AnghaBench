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
struct qlcnic_adapter {int need_fw_reset; int /*<<< orphan*/  state; int /*<<< orphan*/ * msix_entries; TYPE_1__* ahw; struct net_device* netdev; } ;
struct pci_dev {int /*<<< orphan*/  error_state; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ op_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV ; 
 int EINVAL ; 
 int /*<<< orphan*/  NETDEV_UP ; 
 int /*<<< orphan*/  FUNC0 (struct qlcnic_adapter*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  QLCNIC_CRB_DEV_STATE ; 
 int /*<<< orphan*/  QLCNIC_DEV_INITIALIZING ; 
 scalar_t__ QLCNIC_NON_PRIV_FUNC ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __QLCNIC_AER ; 
 int /*<<< orphan*/  __QLCNIC_START_FW ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  pci_channel_io_normal ; 
 int FUNC7 (struct pci_dev*) ; 
 struct qlcnic_adapter* FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 scalar_t__ FUNC11 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC12 (struct qlcnic_adapter*) ; 
 int FUNC13 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC14 (struct qlcnic_adapter*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct qlcnic_adapter*) ; 
 int FUNC16 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC17 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct qlcnic_adapter*) ; 
 int FUNC19 (struct qlcnic_adapter*) ; 
 int FUNC20 (struct qlcnic_adapter*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC22(struct pci_dev *pdev)
{
	int err, first_func;
	struct qlcnic_adapter *adapter = FUNC8(pdev);
	struct net_device *netdev = adapter->netdev;

	pdev->error_state = pci_channel_io_normal;

	err = FUNC7(pdev);
	if (err)
		return err;

	FUNC10(pdev);
	FUNC9(pdev);

	first_func = FUNC16(pdev);

	if (FUNC11(adapter))
		return -EINVAL;

	if (adapter->ahw->op_mode != QLCNIC_NON_PRIV_FUNC && first_func) {
		adapter->need_fw_reset = 1;
		FUNC21(__QLCNIC_START_FW, &adapter->state);
		FUNC1(adapter, QLCNIC_CRB_DEV_STATE,
				    QLCNIC_DEV_INITIALIZING);
		FUNC0(adapter, DRV, "Restarting fw\n");
	}
	FUNC12(adapter);

	err = FUNC19(adapter);
	if (err)
		return err;

	FUNC15(adapter);
	FUNC3(adapter->msix_entries);
	adapter->msix_entries = NULL;
	err = FUNC18(adapter);

	if (err) {
		FUNC3(adapter->msix_entries);
		FUNC4(netdev, "failed to setup interrupt\n");
		return err;
	}

	if (FUNC6(netdev)) {
		err = FUNC13(adapter);
		if (err) {
			FUNC14(adapter, 1);
			FUNC2(__QLCNIC_AER, &adapter->state);
			FUNC5(netdev);
			return err;
		}

		err = FUNC20(adapter, netdev);
		if (err)
			goto done;

		FUNC17(netdev, NETDEV_UP);
	}
 done:
	FUNC5(netdev);
	return err;
}