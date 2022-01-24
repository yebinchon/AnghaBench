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
struct qlcnic_adapter {int /*<<< orphan*/  idc_aen_work; struct net_device* netdev; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 struct qlcnic_adapter* FUNC3 (struct pci_dev*) ; 
 int FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct qlcnic_adapter*,struct net_device*) ; 

__attribute__((used)) static int FUNC8(struct pci_dev *pdev)
{
	struct qlcnic_adapter *adapter = FUNC3(pdev);
	struct net_device *netdev = adapter->netdev;
	int retval;

	FUNC1(netdev);
	FUNC6(adapter);

	if (FUNC2(netdev))
		FUNC7(adapter, netdev);

	FUNC5(adapter);
	FUNC0(&adapter->idc_aen_work);

	retval = FUNC4(pdev);
	if (retval)
		return retval;

	return 0;
}