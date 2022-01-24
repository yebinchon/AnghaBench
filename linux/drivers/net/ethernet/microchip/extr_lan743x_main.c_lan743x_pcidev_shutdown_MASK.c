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
struct lan743x_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lan743x_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct lan743x_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 struct net_device* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void FUNC9(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC5(pdev);
	struct lan743x_adapter *adapter = FUNC2(netdev);

	FUNC7();
	FUNC3(netdev);

	/* close netdev when netdev is at running state.
	 * For instance, it is true when system goes to sleep by pm-suspend
	 * However, it is false when system goes to sleep by suspend GUI menu
	 */
	if (FUNC4(netdev))
		FUNC1(netdev);
	FUNC8();

#ifdef CONFIG_PM
	pci_save_state(pdev);
#endif

	/* clean up lan743x portion */
	FUNC0(adapter);
}