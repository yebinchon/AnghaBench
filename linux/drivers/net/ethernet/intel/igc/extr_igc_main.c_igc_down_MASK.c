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
struct igc_hw {int dummy; } ;
struct igc_adapter {int num_q_vectors; int /*<<< orphan*/  flags; int /*<<< orphan*/  pdev; scalar_t__ link_duplex; scalar_t__ link_speed; int /*<<< orphan*/  stats64_lock; int /*<<< orphan*/  phy_info_timer; int /*<<< orphan*/  watchdog_timer; TYPE_1__** q_vector; int /*<<< orphan*/  state; struct igc_hw hw; struct net_device* netdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  IGC_FLAG_NEED_LINK_UPDATE ; 
 int /*<<< orphan*/  IGC_FLAG_VLAN_PROMISC ; 
 int /*<<< orphan*/  IGC_RCTL ; 
 int IGC_RCTL_EN ; 
 int /*<<< orphan*/  IGC_TCTL ; 
 int IGC_TCTL_EN ; 
 int /*<<< orphan*/  __IGC_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct igc_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct igc_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct igc_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct igc_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct igc_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct igc_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
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

void FUNC20(struct igc_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	struct igc_hw *hw = &adapter->hw;
	u32 tctl, rctl;
	int i = 0;

	FUNC14(__IGC_DOWN, &adapter->state);

	/* disable receives in the hardware */
	rctl = FUNC13(IGC_RCTL);
	FUNC18(IGC_RCTL, rctl & ~IGC_RCTL_EN);
	/* flush and sleep below */

	FUNC4(adapter);

	/* set trans_start so we don't get spurious watchdogs during reset */
	FUNC10(netdev);

	FUNC9(netdev);
	FUNC11(netdev);

	/* disable transmits in the hardware */
	tctl = FUNC13(IGC_TCTL);
	tctl &= ~IGC_TCTL_EN;
	FUNC18(IGC_TCTL, tctl);
	/* flush both disables and wait for them to finish */
	FUNC19();
	FUNC17(10000, 20000);

	FUNC3(adapter);

	adapter->flags &= ~IGC_FLAG_NEED_LINK_UPDATE;

	for (i = 0; i < adapter->num_q_vectors; i++) {
		if (adapter->q_vector[i]) {
			FUNC8(&adapter->q_vector[i]->napi);
			FUNC7(&adapter->q_vector[i]->napi);
		}
	}

	FUNC0(&adapter->watchdog_timer);
	FUNC0(&adapter->phy_info_timer);

	/* record the stats before reset*/
	FUNC15(&adapter->stats64_lock);
	FUNC6(adapter);
	FUNC16(&adapter->stats64_lock);

	adapter->link_speed = 0;
	adapter->link_duplex = 0;

	if (!FUNC12(adapter->pdev))
		FUNC5(adapter);

	/* clear VLAN promisc flag so VFTA will be updated if necessary */
	adapter->flags &= ~IGC_FLAG_VLAN_PROMISC;

	FUNC2(adapter);
	FUNC1(adapter);
}