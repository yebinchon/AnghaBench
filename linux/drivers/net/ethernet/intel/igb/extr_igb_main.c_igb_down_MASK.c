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
struct net_device {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {int num_q_vectors; int /*<<< orphan*/  flags; int /*<<< orphan*/  pdev; scalar_t__ link_duplex; scalar_t__ link_speed; int /*<<< orphan*/  stats64_lock; int /*<<< orphan*/  phy_info_timer; int /*<<< orphan*/  watchdog_timer; TYPE_1__** q_vector; int /*<<< orphan*/  state; struct e1000_hw hw; struct net_device* netdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_RCTL ; 
 int E1000_RCTL_EN ; 
 int /*<<< orphan*/  E1000_TCTL ; 
 int E1000_TCTL_EN ; 
 int /*<<< orphan*/  IGB_FLAG_NEED_LINK_UPDATE ; 
 int /*<<< orphan*/  IGB_FLAG_VLAN_PROMISC ; 
 int /*<<< orphan*/  __IGB_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 () ; 

void FUNC20(struct igb_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	struct e1000_hw *hw = &adapter->hw;
	u32 tctl, rctl;
	int i;

	/* signal that we're down so the interrupt handler does not
	 * reschedule our watchdog timer
	 */
	FUNC14(__IGB_DOWN, &adapter->state);

	/* disable receives in the hardware */
	rctl = FUNC13(E1000_RCTL);
	FUNC18(E1000_RCTL, rctl & ~E1000_RCTL_EN);
	/* flush and sleep below */

	FUNC4(adapter);

	FUNC10(netdev);
	FUNC11(netdev);

	/* disable transmits in the hardware */
	tctl = FUNC13(E1000_TCTL);
	tctl &= ~E1000_TCTL_EN;
	FUNC18(E1000_TCTL, tctl);
	/* flush both disables and wait for them to finish */
	FUNC19();
	FUNC17(10000, 11000);

	FUNC3(adapter);

	adapter->flags &= ~IGB_FLAG_NEED_LINK_UPDATE;

	for (i = 0; i < adapter->num_q_vectors; i++) {
		if (adapter->q_vector[i]) {
			FUNC9(&adapter->q_vector[i]->napi);
			FUNC8(&adapter->q_vector[i]->napi);
		}
	}

	FUNC0(&adapter->watchdog_timer);
	FUNC0(&adapter->phy_info_timer);

	/* record the stats before reset*/
	FUNC15(&adapter->stats64_lock);
	FUNC7(adapter);
	FUNC16(&adapter->stats64_lock);

	adapter->link_speed = 0;
	adapter->link_duplex = 0;

	if (!FUNC12(adapter->pdev))
		FUNC5(adapter);

	/* clear VLAN promisc flag so VFTA will be updated if necessary */
	adapter->flags &= ~IGB_FLAG_VLAN_PROMISC;

	FUNC2(adapter);
	FUNC1(adapter);
#ifdef CONFIG_IGB_DCA

	/* since we reset the hardware DCA settings were cleared */
	igb_setup_dca(adapter);
#endif
}