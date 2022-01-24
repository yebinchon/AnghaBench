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
struct igbvf_adapter {TYPE_1__* rx_ring; int /*<<< orphan*/  tx_ring; scalar_t__ link_duplex; scalar_t__ link_speed; int /*<<< orphan*/  watchdog_timer; int /*<<< orphan*/  state; struct e1000_hw hw; struct net_device* netdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int E1000_RXDCTL_QUEUE_ENABLE ; 
 int E1000_TXDCTL_QUEUE_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __IGBVF_DOWN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct igbvf_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct igbvf_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct igbvf_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC16(struct igbvf_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	struct e1000_hw *hw = &adapter->hw;
	u32 rxdctl, txdctl;

	/* signal that we're down so the interrupt handler does not
	 * reschedule our watchdog timer
	 */
	FUNC15(__IGBVF_DOWN, &adapter->state);

	/* disable receives in the hardware */
	rxdctl = FUNC4(FUNC0(0));
	FUNC5(FUNC0(0), rxdctl & ~E1000_RXDCTL_QUEUE_ENABLE);

	FUNC13(netdev);
	FUNC14(netdev);

	/* disable transmits in the hardware */
	txdctl = FUNC4(FUNC1(0));
	FUNC5(FUNC1(0), txdctl & ~E1000_TXDCTL_QUEUE_ENABLE);

	/* flush both disables and wait for them to finish */
	FUNC3();
	FUNC11(10);

	FUNC12(&adapter->rx_ring->napi);

	FUNC8(adapter);

	FUNC2(&adapter->watchdog_timer);

	/* record the stats before reset*/
	FUNC10(adapter);

	adapter->link_speed = 0;
	adapter->link_duplex = 0;

	FUNC9(adapter);
	FUNC7(adapter->tx_ring);
	FUNC6(adapter->rx_ring);
}