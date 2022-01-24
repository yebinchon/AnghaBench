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
struct pch_gbe_tx_ring {void* count; } ;
struct pch_gbe_rx_ring {void* count; } ;
struct pch_gbe_adapter {int /*<<< orphan*/  netdev; struct pch_gbe_tx_ring* tx_ring; struct pch_gbe_tx_ring* rx_ring; } ;
struct net_device {int dummy; } ;
struct ethtool_ringparam {int /*<<< orphan*/  tx_pending; int /*<<< orphan*/  rx_pending; scalar_t__ rx_jumbo_pending; scalar_t__ rx_mini_pending; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PCH_GBE_MAX_RXD ; 
 int /*<<< orphan*/  PCH_GBE_MIN_RXD ; 
 int /*<<< orphan*/  PCH_GBE_RX_DESC_MULTIPLE ; 
 int /*<<< orphan*/  PCH_GBE_TX_DESC_MULTIPLE ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pch_gbe_tx_ring*) ; 
 struct pch_gbe_tx_ring* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct pch_gbe_adapter* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pch_gbe_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct pch_gbe_adapter*,struct pch_gbe_tx_ring*) ; 
 int /*<<< orphan*/  FUNC7 (struct pch_gbe_adapter*,struct pch_gbe_tx_ring*) ; 
 int FUNC8 (struct pch_gbe_adapter*,struct pch_gbe_tx_ring*) ; 
 int FUNC9 (struct pch_gbe_adapter*,struct pch_gbe_tx_ring*) ; 
 int FUNC10 (struct pch_gbe_adapter*) ; 
 void* FUNC11 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct net_device *netdev,
					struct ethtool_ringparam *ring)
{
	struct pch_gbe_adapter *adapter = FUNC3(netdev);
	struct pch_gbe_tx_ring *txdr, *tx_old;
	struct pch_gbe_rx_ring *rxdr, *rx_old;
	int tx_ring_size, rx_ring_size;
	int err = 0;

	if ((ring->rx_mini_pending) || (ring->rx_jumbo_pending))
		return -EINVAL;
	tx_ring_size = (int)sizeof(struct pch_gbe_tx_ring);
	rx_ring_size = (int)sizeof(struct pch_gbe_rx_ring);

	if ((FUNC4(adapter->netdev)))
		FUNC5(adapter);
	tx_old = adapter->tx_ring;
	rx_old = adapter->rx_ring;

	txdr = FUNC2(tx_ring_size, GFP_KERNEL);
	if (!txdr) {
		err = -ENOMEM;
		goto err_alloc_tx;
	}
	rxdr = FUNC2(rx_ring_size, GFP_KERNEL);
	if (!rxdr) {
		err = -ENOMEM;
		goto err_alloc_rx;
	}
	adapter->tx_ring = txdr;
	adapter->rx_ring = rxdr;

	rxdr->count =
		FUNC0(ring->rx_pending, PCH_GBE_MIN_RXD, PCH_GBE_MAX_RXD);
	rxdr->count = FUNC11(rxdr->count, PCH_GBE_RX_DESC_MULTIPLE);

	txdr->count =
		FUNC0(ring->tx_pending, PCH_GBE_MIN_RXD, PCH_GBE_MAX_RXD);
	txdr->count = FUNC11(txdr->count, PCH_GBE_TX_DESC_MULTIPLE);

	if ((FUNC4(adapter->netdev))) {
		/* Try to get new resources before deleting old */
		err = FUNC8(adapter, adapter->rx_ring);
		if (err)
			goto err_setup_rx;
		err = FUNC9(adapter, adapter->tx_ring);
		if (err)
			goto err_setup_tx;
		FUNC6(adapter, rx_old);
		FUNC7(adapter, tx_old);
		FUNC1(tx_old);
		FUNC1(rx_old);
		adapter->rx_ring = rxdr;
		adapter->tx_ring = txdr;
		err = FUNC10(adapter);
	}
	return err;

err_setup_tx:
	FUNC6(adapter, adapter->rx_ring);
err_setup_rx:
	adapter->rx_ring = rx_old;
	adapter->tx_ring = tx_old;
	FUNC1(rxdr);
err_alloc_rx:
	FUNC1(txdr);
err_alloc_tx:
	if (FUNC4(adapter->netdev))
		FUNC10(adapter);
	return err;
}