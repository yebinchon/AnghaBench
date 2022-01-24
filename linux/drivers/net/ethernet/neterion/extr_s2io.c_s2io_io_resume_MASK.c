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
struct s2io_nic {int dummy; } ;
struct pci_dev {int dummy; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 scalar_t__ FAILURE ; 
 struct s2io_nic* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct net_device* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct s2io_nic*) ; 
 scalar_t__ FUNC7 (struct s2io_nic*) ; 
 scalar_t__ FUNC8 (struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC4(pdev);
	struct s2io_nic *sp = FUNC0(netdev);

	if (FUNC2(netdev)) {
		if (FUNC7(sp)) {
			FUNC5("Can't bring device back up after reset.\n");
			return;
		}

		if (FUNC8(netdev, netdev->dev_addr) == FAILURE) {
			FUNC6(sp);
			FUNC5("Can't restore mac addr after reset.\n");
			return;
		}
	}

	FUNC1(netdev);
	FUNC3(netdev);
}