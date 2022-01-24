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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int crb_win; int ocm_win; } ;
struct netxen_adapter {TYPE_1__ ahw; struct net_device* netdev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_POLL_DELAY ; 
 int /*<<< orphan*/  NETDEV_UP ; 
 int /*<<< orphan*/  PCI_D0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  netxen_fw_poll_work ; 
 int FUNC3 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct netxen_adapter*) ; 
 int FUNC5 (struct netxen_adapter*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct netxen_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct netxen_adapter*) ; 
 int FUNC10 (struct pci_dev*) ; 
 struct netxen_adapter* FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct pci_dev *pdev)
{
	struct netxen_adapter *adapter = FUNC11(pdev);
	struct net_device *netdev = adapter->netdev;
	int err;

	err = FUNC10(pdev);
	if (err)
		return err;

	FUNC14(pdev, PCI_D0);
	FUNC13(pdev);
	FUNC12(pdev);

	adapter->ahw.crb_win = -1;
	adapter->ahw.ocm_win = -1;

	err = FUNC8(adapter);
	if (err) {
		FUNC0(&pdev->dev, "failed to start firmware\n");
		return err;
	}

	if (FUNC2(netdev)) {
		err = FUNC3(adapter);
		if (err)
			goto err_out;

		err = FUNC5(adapter, netdev);
		if (err)
			goto err_out_detach;

		FUNC6(netdev, NETDEV_UP);
	}

	FUNC1(netdev);
	FUNC7(adapter, netxen_fw_poll_work, FW_POLL_DELAY);
	return 0;

err_out_detach:
	FUNC4(adapter);
err_out:
	FUNC9(adapter);
	return err;
}