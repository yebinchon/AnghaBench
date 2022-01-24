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
struct nic {int /*<<< orphan*/  cbs_pool; int /*<<< orphan*/  csr; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nic*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct nic* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 struct net_device* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

__attribute__((used)) static void FUNC9(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC5(pdev);

	if (netdev) {
		struct nic *nic = FUNC3(netdev);
		FUNC8(netdev);
		FUNC1(nic);
		FUNC6(pdev, nic->csr);
		FUNC0(nic->cbs_pool);
		FUNC2(netdev);
		FUNC7(pdev);
		FUNC4(pdev);
	}
}