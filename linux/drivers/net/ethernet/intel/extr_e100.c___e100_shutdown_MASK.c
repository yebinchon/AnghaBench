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
typedef  int u16 ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  phy_id; } ;
struct nic {int flags; scalar_t__ phy; TYPE_1__ mii; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int E100_82552_ANEG_NOW ; 
 int E100_82552_REV_ANEG ; 
 int /*<<< orphan*/  E100_82552_SMARTSPEED ; 
 int FUNC0 (struct nic*) ; 
 int /*<<< orphan*/  FUNC1 (struct nic*) ; 
 int FUNC2 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct nic* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 struct net_device* FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 scalar_t__ phy_82552_v ; 
 int wol_magic ; 

__attribute__((used)) static void FUNC10(struct pci_dev *pdev, bool *enable_wake)
{
	struct net_device *netdev = FUNC8(pdev);
	struct nic *nic = FUNC4(netdev);

	if (FUNC6(netdev))
		FUNC1(nic);
	FUNC5(netdev);

	FUNC9(pdev);

	if ((nic->flags & wol_magic) | FUNC0(nic)) {
		/* enable reverse auto-negotiation */
		if (nic->phy == phy_82552_v) {
			u16 smartspeed = FUNC2(netdev, nic->mii.phy_id,
			                           E100_82552_SMARTSPEED);

			FUNC3(netdev, nic->mii.phy_id,
			           E100_82552_SMARTSPEED, smartspeed |
			           E100_82552_REV_ANEG | E100_82552_ANEG_NOW);
		}
		*enable_wake = true;
	} else {
		*enable_wake = false;
	}

	FUNC7(pdev);
}