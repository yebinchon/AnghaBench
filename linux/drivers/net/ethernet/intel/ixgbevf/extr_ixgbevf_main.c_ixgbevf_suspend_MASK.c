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
struct ixgbevf_adapter {int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int /*<<< orphan*/  __IXGBEVF_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbevf_adapter*) ; 
 struct ixgbevf_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct net_device* FUNC6 (struct pci_dev*) ; 
 int FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct pci_dev *pdev, pm_message_t state)
{
	struct net_device *netdev = FUNC6(pdev);
	struct ixgbevf_adapter *adapter = FUNC2(netdev);
#ifdef CONFIG_PM
	int retval = 0;
#endif

	FUNC8();
	FUNC3(netdev);

	if (FUNC4(netdev))
		FUNC1(adapter);

	FUNC0(adapter);
	FUNC9();

#ifdef CONFIG_PM
	retval = pci_save_state(pdev);
	if (retval)
		return retval;

#endif
	if (!FUNC10(__IXGBEVF_DISABLED, &adapter->state))
		FUNC5(pdev);

	return 0;
}