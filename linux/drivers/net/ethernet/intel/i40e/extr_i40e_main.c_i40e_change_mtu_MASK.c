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
struct net_device {int mtu; } ;
struct i40e_vsi {struct i40e_pf* back; } ;
struct i40e_pf {int /*<<< orphan*/  state; } ;
struct i40e_netdev_priv {struct i40e_vsi* vsi; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETH_FCS_LEN ; 
 int ETH_HLEN ; 
 int VLAN_HLEN ; 
 int /*<<< orphan*/  __I40E_CLIENT_L2_CHANGE ; 
 int /*<<< orphan*/  __I40E_CLIENT_SERVICE_REQUESTED ; 
 scalar_t__ FUNC0 (struct i40e_vsi*) ; 
 int FUNC1 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,int,int) ; 
 struct i40e_netdev_priv* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct net_device *netdev, int new_mtu)
{
	struct i40e_netdev_priv *np = FUNC4(netdev);
	struct i40e_vsi *vsi = np->vsi;
	struct i40e_pf *pf = vsi->back;

	if (FUNC0(vsi)) {
		int frame_size = new_mtu + ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN;

		if (frame_size > FUNC1(vsi))
			return -EINVAL;
	}

	FUNC3(netdev, "changing MTU from %d to %d\n",
		    netdev->mtu, new_mtu);
	netdev->mtu = new_mtu;
	if (FUNC5(netdev))
		FUNC2(vsi);
	FUNC6(__I40E_CLIENT_SERVICE_REQUESTED, pf->state);
	FUNC6(__I40E_CLIENT_L2_CHANGE, pf->state);
	return 0;
}