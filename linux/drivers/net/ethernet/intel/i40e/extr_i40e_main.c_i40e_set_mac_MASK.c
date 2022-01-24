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
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct i40e_vsi {scalar_t__ type; int /*<<< orphan*/  mac_filter_hash_lock; struct i40e_pf* back; } ;
struct TYPE_4__ {int /*<<< orphan*/  asq_last_status; } ;
struct TYPE_3__ {int /*<<< orphan*/  addr; } ;
struct i40e_hw {TYPE_2__ aq; TYPE_1__ mac; } ;
struct i40e_pf {int /*<<< orphan*/  state; struct i40e_hw hw; } ;
struct i40e_netdev_priv {struct i40e_vsi* vsi; } ;
typedef  scalar_t__ i40e_status ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  I40E_AQC_WRITE_TYPE_LAA_WOL ; 
 scalar_t__ I40E_VSI_MAIN ; 
 int /*<<< orphan*/  __I40E_DOWN ; 
 int /*<<< orphan*/  __I40E_RESET_RECOVERY_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_vsi*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_vsi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i40e_pf*) ; 
 int /*<<< orphan*/  FUNC7 (struct i40e_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,char*,int /*<<< orphan*/ ,...) ; 
 struct i40e_netdev_priv* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct net_device *netdev, void *p)
{
	struct i40e_netdev_priv *np = FUNC10(netdev);
	struct i40e_vsi *vsi = np->vsi;
	struct i40e_pf *pf = vsi->back;
	struct i40e_hw *hw = &pf->hw;
	struct sockaddr *addr = p;

	if (!FUNC8(addr->sa_data))
		return -EADDRNOTAVAIL;

	if (FUNC1(netdev->dev_addr, addr->sa_data)) {
		FUNC9(netdev, "already using mac address %pM\n",
			    addr->sa_data);
		return 0;
	}

	if (FUNC13(__I40E_DOWN, pf->state) ||
	    FUNC13(__I40E_RESET_RECOVERY_PENDING, pf->state))
		return -EADDRNOTAVAIL;

	if (FUNC1(hw->mac.addr, addr->sa_data))
		FUNC9(netdev, "returning to hw mac address %pM\n",
			    hw->mac.addr);
	else
		FUNC9(netdev, "set new mac address %pM\n", addr->sa_data);

	/* Copy the address first, so that we avoid a possible race with
	 * .set_rx_mode().
	 * - Remove old address from MAC filter
	 * - Copy new address
	 * - Add new address to MAC filter
	 */
	FUNC11(&vsi->mac_filter_hash_lock);
	FUNC5(vsi, netdev->dev_addr);
	FUNC0(netdev->dev_addr, addr->sa_data);
	FUNC2(vsi, netdev->dev_addr);
	FUNC12(&vsi->mac_filter_hash_lock);

	if (vsi->type == I40E_VSI_MAIN) {
		i40e_status ret;

		ret = FUNC3(hw, I40E_AQC_WRITE_TYPE_LAA_WOL,
						addr->sa_data, NULL);
		if (ret)
			FUNC9(netdev, "Ignoring error from firmware on LAA update, status %s, AQ ret %s\n",
				    FUNC7(hw, ret),
				    FUNC4(hw, hw->aq.asq_last_status));
	}

	/* schedule our worker thread which will take care of
	 * applying the new filter changes
	 */
	FUNC6(pf);
	return 0;
}