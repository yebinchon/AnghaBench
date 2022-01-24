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
typedef  scalar_t__ u16 ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct ethtool_ringparam {int /*<<< orphan*/  tx_pending; int /*<<< orphan*/  rx_pending; scalar_t__ rx_jumbo_pending; scalar_t__ rx_mini_pending; } ;
struct e1000_ring {scalar_t__ count; } ;
struct e1000_adapter {scalar_t__ tx_ring_count; scalar_t__ rx_ring_count; int /*<<< orphan*/  state; struct e1000_ring* rx_ring; struct e1000_ring* tx_ring; int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E1000_MAX_RXD ; 
 int /*<<< orphan*/  E1000_MAX_TXD ; 
 int /*<<< orphan*/  E1000_MIN_RXD ; 
 int /*<<< orphan*/  E1000_MIN_TXD ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  REQ_RX_DESCRIPTOR_MULTIPLE ; 
 int /*<<< orphan*/  REQ_TX_DESCRIPTOR_MULTIPLE ; 
 int /*<<< orphan*/  __E1000_RESETTING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_adapter*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_ring*) ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_ring*) ; 
 int FUNC6 (struct e1000_ring*) ; 
 int FUNC7 (struct e1000_ring*) ; 
 int /*<<< orphan*/  FUNC8 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct e1000_ring*,struct e1000_ring*,int) ; 
 struct e1000_adapter* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  u32 ; 
 int /*<<< orphan*/  FUNC15 (int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct e1000_ring*) ; 
 struct e1000_ring* FUNC17 (int) ; 

__attribute__((used)) static int FUNC18(struct net_device *netdev,
			       struct ethtool_ringparam *ring)
{
	struct e1000_adapter *adapter = FUNC10(netdev);
	struct e1000_ring *temp_tx = NULL, *temp_rx = NULL;
	int err = 0, size = sizeof(struct e1000_ring);
	bool set_tx = false, set_rx = false;
	u16 new_rx_count, new_tx_count;

	if ((ring->rx_mini_pending) || (ring->rx_jumbo_pending))
		return -EINVAL;

	new_rx_count = FUNC1(u32, ring->rx_pending, E1000_MIN_RXD,
			       E1000_MAX_RXD);
	new_rx_count = FUNC0(new_rx_count, REQ_RX_DESCRIPTOR_MULTIPLE);

	new_tx_count = FUNC1(u32, ring->tx_pending, E1000_MIN_TXD,
			       E1000_MAX_TXD);
	new_tx_count = FUNC0(new_tx_count, REQ_TX_DESCRIPTOR_MULTIPLE);

	if ((new_tx_count == adapter->tx_ring_count) &&
	    (new_rx_count == adapter->rx_ring_count))
		/* nothing to do */
		return 0;

	while (FUNC14(__E1000_RESETTING, &adapter->state))
		FUNC15(1000, 2000);

	if (!FUNC11(adapter->netdev)) {
		/* Set counts now and allocate resources during open() */
		adapter->tx_ring->count = new_tx_count;
		adapter->rx_ring->count = new_rx_count;
		adapter->tx_ring_count = new_tx_count;
		adapter->rx_ring_count = new_rx_count;
		goto clear_reset;
	}

	set_tx = (new_tx_count != adapter->tx_ring_count);
	set_rx = (new_rx_count != adapter->rx_ring_count);

	/* Allocate temporary storage for ring updates */
	if (set_tx) {
		temp_tx = FUNC17(size);
		if (!temp_tx) {
			err = -ENOMEM;
			goto free_temp;
		}
	}
	if (set_rx) {
		temp_rx = FUNC17(size);
		if (!temp_rx) {
			err = -ENOMEM;
			goto free_temp;
		}
	}

	FUNC12(netdev->dev.parent);

	FUNC3(adapter, true);

	/* We can't just free everything and then setup again, because the
	 * ISRs in MSI-X mode get passed pointers to the Tx and Rx ring
	 * structs.  First, attempt to allocate new resources...
	 */
	if (set_tx) {
		FUNC9(temp_tx, adapter->tx_ring, size);
		temp_tx->count = new_tx_count;
		err = FUNC7(temp_tx);
		if (err)
			goto err_setup;
	}
	if (set_rx) {
		FUNC9(temp_rx, adapter->rx_ring, size);
		temp_rx->count = new_rx_count;
		err = FUNC6(temp_rx);
		if (err)
			goto err_setup_rx;
	}

	/* ...then free the old resources and copy back any new ring data */
	if (set_tx) {
		FUNC5(adapter->tx_ring);
		FUNC9(adapter->tx_ring, temp_tx, size);
		adapter->tx_ring_count = new_tx_count;
	}
	if (set_rx) {
		FUNC4(adapter->rx_ring);
		FUNC9(adapter->rx_ring, temp_rx, size);
		adapter->rx_ring_count = new_rx_count;
	}

err_setup_rx:
	if (err && set_tx)
		FUNC5(temp_tx);
err_setup:
	FUNC8(adapter);
	FUNC13(netdev->dev.parent);
free_temp:
	FUNC16(temp_tx);
	FUNC16(temp_rx);
clear_reset:
	FUNC2(__E1000_RESETTING, &adapter->state);
	return err;
}