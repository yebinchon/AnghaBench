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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct net_device {int flags; int features; TYPE_1__ dev; } ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {struct e1000_hw hw; } ;

/* Variables and functions */
 int E1000_RCTL_MPE ; 
 int E1000_RCTL_UPE ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int /*<<< orphan*/  RCTL ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_adapter*) ; 
 int FUNC4 (struct net_device*) ; 
 int FUNC5 (struct net_device*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 struct e1000_adapter* FUNC8 (struct net_device*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct net_device *netdev)
{
	struct e1000_adapter *adapter = FUNC8(netdev);
	struct e1000_hw *hw = &adapter->hw;
	u32 rctl;

	if (FUNC9(netdev->dev.parent))
		return;

	/* Check for Promiscuous and All Multicast modes */
	rctl = FUNC6(RCTL);

	/* clear the affected bits */
	rctl &= ~(E1000_RCTL_UPE | E1000_RCTL_MPE);

	if (netdev->flags & IFF_PROMISC) {
		rctl |= (E1000_RCTL_UPE | E1000_RCTL_MPE);
		/* Do not hardware filter VLANs in promisc mode */
		FUNC0(adapter);
	} else {
		int count;

		if (netdev->flags & IFF_ALLMULTI) {
			rctl |= E1000_RCTL_MPE;
		} else {
			/* Write addresses to the MTA, if the attempt fails
			 * then we should just turn on promiscuous mode so
			 * that we can at least receive multicast traffic
			 */
			count = FUNC4(netdev);
			if (count < 0)
				rctl |= E1000_RCTL_MPE;
		}
		FUNC1(adapter);
		/* Write addresses to available RAR registers, if there is not
		 * sufficient space to store all the addresses then enable
		 * unicast promiscuous mode
		 */
		count = FUNC5(netdev);
		if (count < 0)
			rctl |= E1000_RCTL_UPE;
	}

	FUNC7(RCTL, rctl);

	if (netdev->features & NETIF_F_HW_VLAN_CTAG_RX)
		FUNC3(adapter);
	else
		FUNC2(adapter);
}