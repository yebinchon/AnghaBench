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
struct net_device {int dummy; } ;
struct iavf_adapter {scalar_t__ aq_required; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  __IAVF_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct iavf_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 struct net_device* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC7(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC5(pdev);
	struct iavf_adapter *adapter = FUNC1(netdev);

	FUNC2(netdev);

	if (FUNC3(netdev))
		FUNC0(netdev);

	/* Prevent the watchdog from running. */
	adapter->state = __IAVF_REMOVE;
	adapter->aq_required = 0;

#ifdef CONFIG_PM
	pci_save_state(pdev);

#endif
	FUNC4(pdev);
}