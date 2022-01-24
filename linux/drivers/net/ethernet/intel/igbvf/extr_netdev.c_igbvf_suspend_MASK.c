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
struct igbvf_adapter {int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __IGBVF_RESETTING ; 
 int /*<<< orphan*/  FUNC1 (struct igbvf_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct igbvf_adapter*) ; 
 struct igbvf_adapter* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 struct net_device* FUNC7 (struct pci_dev*) ; 
 int FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct pci_dev *pdev, pm_message_t state)
{
	struct net_device *netdev = FUNC7(pdev);
	struct igbvf_adapter *adapter = FUNC3(netdev);
#ifdef CONFIG_PM
	int retval = 0;
#endif

	FUNC4(netdev);

	if (FUNC5(netdev)) {
		FUNC0(FUNC9(__IGBVF_RESETTING, &adapter->state));
		FUNC1(adapter);
		FUNC2(adapter);
	}

#ifdef CONFIG_PM
	retval = pci_save_state(pdev);
	if (retval)
		return retval;
#endif

	FUNC6(pdev);

	return 0;
}