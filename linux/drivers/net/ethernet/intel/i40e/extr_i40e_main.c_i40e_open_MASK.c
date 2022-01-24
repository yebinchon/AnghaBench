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
struct net_device {int dummy; } ;
struct i40e_vsi {struct i40e_pf* back; } ;
struct i40e_pf {int /*<<< orphan*/  hw; int /*<<< orphan*/  state; } ;
struct i40e_netdev_priv {struct i40e_vsi* vsi; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 int /*<<< orphan*/  I40E_GLLAN_TSOMSK_F ; 
 int /*<<< orphan*/  I40E_GLLAN_TSOMSK_L ; 
 int /*<<< orphan*/  I40E_GLLAN_TSOMSK_M ; 
 int TCP_FLAG_CWR ; 
 int TCP_FLAG_FIN ; 
 int TCP_FLAG_PSH ; 
 int /*<<< orphan*/  __I40E_BAD_EEPROM ; 
 int /*<<< orphan*/  __I40E_TESTING ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct i40e_pf*,int) ; 
 int FUNC2 (struct i40e_vsi*) ; 
 struct i40e_netdev_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC8(struct net_device *netdev)
{
	struct i40e_netdev_priv *np = FUNC3(netdev);
	struct i40e_vsi *vsi = np->vsi;
	struct i40e_pf *pf = vsi->back;
	int err;

	/* disallow open during test or if eeprom is broken */
	if (FUNC5(__I40E_TESTING, pf->state) ||
	    FUNC5(__I40E_BAD_EEPROM, pf->state))
		return -EBUSY;

	FUNC4(netdev);

	if (FUNC1(pf, true))
		return -EAGAIN;

	err = FUNC2(vsi);
	if (err)
		return err;

	/* configure global TSO hardware offload settings */
	FUNC7(&pf->hw, I40E_GLLAN_TSOMSK_F, FUNC0(TCP_FLAG_PSH |
						       TCP_FLAG_FIN) >> 16);
	FUNC7(&pf->hw, I40E_GLLAN_TSOMSK_M, FUNC0(TCP_FLAG_PSH |
						       TCP_FLAG_FIN |
						       TCP_FLAG_CWR) >> 16);
	FUNC7(&pf->hw, I40E_GLLAN_TSOMSK_L, FUNC0(TCP_FLAG_CWR) >> 16);

	FUNC6(netdev);

	return 0;
}