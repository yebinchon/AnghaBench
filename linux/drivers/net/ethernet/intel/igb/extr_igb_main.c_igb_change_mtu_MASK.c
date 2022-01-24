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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int mtu; } ;
struct igb_adapter {int max_frame_size; int /*<<< orphan*/  state; struct pci_dev* pdev; } ;

/* Variables and functions */
 int ETH_FCS_LEN ; 
 int ETH_FRAME_LEN ; 
 int ETH_HLEN ; 
 int VLAN_HLEN ; 
 int /*<<< orphan*/  __IGB_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct igb_adapter*) ; 
 struct igb_adapter* FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 

__attribute__((used)) static int FUNC9(struct net_device *netdev, int new_mtu)
{
	struct igb_adapter *adapter = FUNC5(netdev);
	struct pci_dev *pdev = adapter->pdev;
	int max_frame = new_mtu + ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN;

	/* adjust max frame to be at least the size of a standard frame */
	if (max_frame < (ETH_FRAME_LEN + ETH_FCS_LEN))
		max_frame = ETH_FRAME_LEN + ETH_FCS_LEN;

	while (FUNC7(__IGB_RESETTING, &adapter->state))
		FUNC8(1000, 2000);

	/* igb_down has a dependency on max_frame_size */
	adapter->max_frame_size = max_frame;

	if (FUNC6(netdev))
		FUNC2(adapter);

	FUNC1(&pdev->dev, "changing MTU from %d to %d\n",
		 netdev->mtu, new_mtu);
	netdev->mtu = new_mtu;

	if (FUNC6(netdev))
		FUNC4(adapter);
	else
		FUNC3(adapter);

	FUNC0(__IGB_RESETTING, &adapter->state);

	return 0;
}