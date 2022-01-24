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
struct pci_dev {int dummy; } ;
struct net_device {int /*<<< orphan*/  phydev; } ;
struct et131x_adapter {int /*<<< orphan*/  regs; int /*<<< orphan*/  mii_bus; int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct et131x_adapter* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 struct net_device* FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 

__attribute__((used)) static void FUNC13(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC9(pdev);
	struct et131x_adapter *adapter = FUNC5(netdev);

	FUNC12(netdev);
	FUNC6(&adapter->napi);
	FUNC11(netdev->phydev);
	FUNC4(adapter->mii_bus);
	FUNC3(adapter->mii_bus);

	FUNC0(adapter);
	FUNC2(adapter->regs);
	FUNC7(pdev);

	FUNC1(netdev);
	FUNC10(pdev);
	FUNC8(pdev);
}