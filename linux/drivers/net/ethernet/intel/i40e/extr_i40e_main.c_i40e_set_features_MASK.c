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
struct net_device {int features; } ;
struct i40e_vsi {scalar_t__ macvlan_cnt; struct i40e_pf* back; } ;
struct i40e_pf {TYPE_1__* pdev; scalar_t__ num_cloud_filters; } ;
struct i40e_netdev_priv {struct i40e_vsi* vsi; } ;
typedef  int netdev_features_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  I40E_PF_RESET_FLAG ; 
 int NETIF_F_HW_L2FW_DOFFLOAD ; 
 int NETIF_F_HW_TC ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int NETIF_F_RXHASH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_pf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_pf*) ; 
 int FUNC5 (struct i40e_pf*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC7 (struct i40e_vsi*) ; 
 struct i40e_netdev_priv* FUNC8 (struct net_device*) ; 

__attribute__((used)) static int FUNC9(struct net_device *netdev,
			     netdev_features_t features)
{
	struct i40e_netdev_priv *np = FUNC8(netdev);
	struct i40e_vsi *vsi = np->vsi;
	struct i40e_pf *pf = vsi->back;
	bool need_reset;

	if (features & NETIF_F_RXHASH && !(netdev->features & NETIF_F_RXHASH))
		FUNC4(pf);
	else if (!(features & NETIF_F_RXHASH) &&
		 netdev->features & NETIF_F_RXHASH)
		FUNC1(vsi);

	if (features & NETIF_F_HW_VLAN_CTAG_RX)
		FUNC7(vsi);
	else
		FUNC6(vsi);

	if (!(features & NETIF_F_HW_TC) && pf->num_cloud_filters) {
		FUNC0(&pf->pdev->dev,
			"Offloaded tc filters active, can't turn hw_tc_offload off");
		return -EINVAL;
	}

	if (!(features & NETIF_F_HW_L2FW_DOFFLOAD) && vsi->macvlan_cnt)
		FUNC2(vsi);

	need_reset = FUNC5(pf, features);

	if (need_reset)
		FUNC3(pf, I40E_PF_RESET_FLAG, true);

	return 0;
}