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
struct pch_gbe_adapter {int /*<<< orphan*/  pdev; int /*<<< orphan*/  irq; struct net_device* netdev; } ;
struct net_device {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  PCI_IRQ_ALL_TYPES ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  pch_gbe_intr ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct pch_gbe_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	int err;

	err = FUNC2(adapter->pdev, 1, 1, PCI_IRQ_ALL_TYPES);
	if (err < 0)
		return err;

	adapter->irq = FUNC4(adapter->pdev, 0);

	err = FUNC5(adapter->irq, &pch_gbe_intr, IRQF_SHARED,
			  netdev->name, netdev);
	if (err)
		FUNC1(netdev, "Unable to allocate interrupt Error: %d\n",
			   err);
	FUNC0(netdev, "have_msi : %d  return : 0x%04x\n",
		   FUNC3(adapter->pdev), err);
	return err;
}