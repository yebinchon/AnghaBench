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
typedef  scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct ethtool_ringparam {scalar_t__ tx_pending; int /*<<< orphan*/  rx_pending; scalar_t__ rx_jumbo_pending; scalar_t__ rx_mini_pending; } ;
struct efx_nic {int /*<<< orphan*/  net_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFX_MAX_DMAQ_SIZE ; 
 int /*<<< orphan*/  EFX_RXQ_MIN_ENT ; 
 scalar_t__ FUNC0 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  drv ; 
 int FUNC2 (struct efx_nic*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct efx_nic* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct net_device *net_dev,
				     struct ethtool_ringparam *ring)
{
	struct efx_nic *efx = FUNC4(net_dev);
	u32 txq_entries;

	if (ring->rx_mini_pending || ring->rx_jumbo_pending ||
	    ring->rx_pending > EFX_MAX_DMAQ_SIZE ||
	    ring->tx_pending > FUNC0(efx))
		return -EINVAL;

	if (ring->rx_pending < EFX_RXQ_MIN_ENT) {
		FUNC5(efx, drv, efx->net_dev,
			  "RX queues cannot be smaller than %u\n",
			  EFX_RXQ_MIN_ENT);
		return -EINVAL;
	}

	txq_entries = FUNC3(ring->tx_pending, FUNC1(efx));
	if (txq_entries != ring->tx_pending)
		FUNC6(efx, drv, efx->net_dev,
			   "increasing TX queue size to minimum of %u\n",
			   txq_entries);

	return FUNC2(efx, ring->rx_pending, txq_entries);
}