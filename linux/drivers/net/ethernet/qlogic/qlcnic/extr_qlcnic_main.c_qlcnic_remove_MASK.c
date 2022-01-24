#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct qlcnic_hardware_context {struct qlcnic_hardware_context* fw_info; int /*<<< orphan*/  mailbox; } ;
struct qlcnic_adapter {int /*<<< orphan*/ * qlcnic_wq; struct qlcnic_hardware_context* ahw; int /*<<< orphan*/  state; struct qlcnic_hardware_context* eswitch; struct qlcnic_hardware_context* npars; int /*<<< orphan*/  dcb; int /*<<< orphan*/  idc_aen_work; struct net_device* netdev; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  __QLCNIC_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct qlcnic_hardware_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 struct qlcnic_adapter* FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 scalar_t__ FUNC9 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC10 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC14 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC16 (struct qlcnic_hardware_context*) ; 
 int /*<<< orphan*/  FUNC17 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC20 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC21 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC22 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC23 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC24 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC25 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC26 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC27 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC28 (struct net_device*) ; 

__attribute__((used)) static void FUNC29(struct pci_dev *pdev)
{
	struct qlcnic_adapter *adapter;
	struct net_device *netdev;
	struct qlcnic_hardware_context *ahw;

	adapter = FUNC7(pdev);
	if (adapter == NULL)
		return;

	netdev = adapter->netdev;

	FUNC15(adapter);
	FUNC25(adapter);
	ahw = adapter->ahw;

	FUNC28(netdev);
	FUNC24(adapter);

	if (FUNC10(adapter)) {
		FUNC14(adapter, 0);
		FUNC0(&adapter->idc_aen_work);
		FUNC13(adapter);
		FUNC11(adapter);
		FUNC12(ahw->mailbox);
		FUNC4(ahw->fw_info);
	}

	FUNC18(adapter->dcb);
	FUNC19(adapter);
	FUNC4(adapter->npars);
	FUNC4(adapter->eswitch);

	if (FUNC9(adapter))
		FUNC17(adapter, 0);

	FUNC1(__QLCNIC_RESETTING, &adapter->state);

	FUNC21(adapter);

	FUNC26(adapter);

	FUNC23(adapter);

	FUNC27(adapter);

	FUNC16(adapter->ahw);

	FUNC22(adapter);

	FUNC6(pdev);
	FUNC8(pdev);
	FUNC5(pdev);

	if (adapter->qlcnic_wq) {
		FUNC2(adapter->qlcnic_wq);
		adapter->qlcnic_wq = NULL;
	}

	FUNC20(adapter);
	FUNC4(ahw);
	FUNC3(netdev);
}