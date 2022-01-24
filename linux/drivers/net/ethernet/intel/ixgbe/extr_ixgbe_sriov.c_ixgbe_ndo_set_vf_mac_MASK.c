#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned char u8 ;
struct net_device {int dummy; } ;
struct ixgbe_adapter {int num_vfs; TYPE_2__* pdev; TYPE_1__* vfinfo; int /*<<< orphan*/  state; } ;
typedef  int s32 ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int pf_set_mac; unsigned char* vf_mac_addresses; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  __IXGBE_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (unsigned char*) ; 
 scalar_t__ FUNC3 (unsigned char*) ; 
 int FUNC4 (struct ixgbe_adapter*,unsigned char*,int) ; 
 int FUNC5 (struct ixgbe_adapter*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned char*,int /*<<< orphan*/ ) ; 
 struct ixgbe_adapter* FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC9(struct net_device *netdev, int vf, u8 *mac)
{
	struct ixgbe_adapter *adapter = FUNC7(netdev);
	s32 retval;

	if (vf >= adapter->num_vfs)
		return -EINVAL;

	if (FUNC2(mac)) {
		FUNC0(&adapter->pdev->dev, "setting MAC %pM on VF %d\n",
			 mac, vf);
		FUNC0(&adapter->pdev->dev, "Reload the VF driver to make this change effective.");

		retval = FUNC5(adapter, vf, mac);
		if (retval >= 0) {
			adapter->vfinfo[vf].pf_set_mac = true;

			if (FUNC8(__IXGBE_DOWN, &adapter->state)) {
				FUNC1(&adapter->pdev->dev, "The VF MAC address has been set, but the PF device is not up.\n");
				FUNC1(&adapter->pdev->dev, "Bring the PF device up before attempting to use the VF device.\n");
			}
		} else {
			FUNC1(&adapter->pdev->dev, "The VF MAC address was NOT set due to invalid or duplicate MAC address.\n");
		}
	} else if (FUNC3(mac)) {
		unsigned char *vf_mac_addr =
					   adapter->vfinfo[vf].vf_mac_addresses;

		/* nothing to do */
		if (FUNC3(vf_mac_addr))
			return 0;

		FUNC0(&adapter->pdev->dev, "removing MAC on VF %d\n", vf);

		retval = FUNC4(adapter, vf_mac_addr, vf);
		if (retval >= 0) {
			adapter->vfinfo[vf].pf_set_mac = false;
			FUNC6(vf_mac_addr, mac, ETH_ALEN);
		} else {
			FUNC1(&adapter->pdev->dev, "Could NOT remove the VF MAC address.\n");
		}
	} else {
		retval = -EINVAL;
	}

	return retval;
}