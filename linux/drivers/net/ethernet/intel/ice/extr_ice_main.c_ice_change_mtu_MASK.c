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
typedef  int u8 ;
struct net_device {int mtu; int min_mtu; int max_mtu; } ;
struct ice_vsi {int /*<<< orphan*/  state; struct ice_pf* back; } ;
struct ice_pf {int /*<<< orphan*/  state; } ;
struct ice_netdev_priv {struct ice_vsi* vsi; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  __ICE_DOWN ; 
 int FUNC0 (struct ice_vsi*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ice_vsi*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,int) ; 
 struct ice_netdev_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 

__attribute__((used)) static int FUNC9(struct net_device *netdev, int new_mtu)
{
	struct ice_netdev_priv *np = FUNC5(netdev);
	struct ice_vsi *vsi = np->vsi;
	struct ice_pf *pf = vsi->back;
	u8 count = 0;

	if (new_mtu == netdev->mtu) {
		FUNC6(netdev, "MTU is already %u\n", netdev->mtu);
		return 0;
	}

	if (new_mtu < netdev->min_mtu) {
		FUNC3(netdev, "new MTU invalid. min_mtu is %d\n",
			   netdev->min_mtu);
		return -EINVAL;
	} else if (new_mtu > netdev->max_mtu) {
		FUNC3(netdev, "new MTU invalid. max_mtu is %d\n",
			   netdev->min_mtu);
		return -EINVAL;
	}
	/* if a reset is in progress, wait for some time for it to complete */
	do {
		if (FUNC1(pf->state)) {
			count++;
			FUNC8(1000, 2000);
		} else {
			break;
		}

	} while (count < 100);

	if (count == 100) {
		FUNC3(netdev, "can't change MTU. Device is busy\n");
		return -EBUSY;
	}

	netdev->mtu = new_mtu;

	/* if VSI is up, bring it down and then back up */
	if (!FUNC7(__ICE_DOWN, vsi->state)) {
		int err;

		err = FUNC0(vsi);
		if (err) {
			FUNC3(netdev, "change MTU if_up err %d\n", err);
			return err;
		}

		err = FUNC2(vsi);
		if (err) {
			FUNC3(netdev, "change MTU if_up err %d\n", err);
			return err;
		}
	}

	FUNC4(netdev, "changed MTU to %d\n", new_mtu);
	return 0;
}