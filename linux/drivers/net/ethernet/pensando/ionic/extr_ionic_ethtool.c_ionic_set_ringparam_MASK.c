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
struct ionic_lif {scalar_t__ ntxq_descs; scalar_t__ nrxq_descs; int /*<<< orphan*/  state; } ;
struct ethtool_ringparam {scalar_t__ tx_pending; scalar_t__ rx_pending; scalar_t__ rx_jumbo_pending; scalar_t__ rx_mini_pending; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  IONIC_LIF_QUEUE_RESET ; 
 int /*<<< orphan*/  IONIC_LIF_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ionic_lif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*) ; 
 struct ionic_lif* FUNC6 (struct net_device*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct net_device *netdev,
			       struct ethtool_ringparam *ring)
{
	struct ionic_lif *lif = FUNC6(netdev);
	bool running;

	if (ring->rx_mini_pending || ring->rx_jumbo_pending) {
		FUNC5(netdev, "Changing jumbo or mini descriptors not supported\n");
		return -EINVAL;
	}

	if (!FUNC4(ring->tx_pending) ||
	    !FUNC4(ring->rx_pending)) {
		FUNC5(netdev, "Descriptor count must be a power of 2\n");
		return -EINVAL;
	}

	/* if nothing to do return success */
	if (ring->tx_pending == lif->ntxq_descs &&
	    ring->rx_pending == lif->nrxq_descs)
		return 0;

	if (!FUNC3(lif, IONIC_LIF_QUEUE_RESET))
		return -EBUSY;

	running = FUNC7(IONIC_LIF_UP, lif->state);
	if (running)
		FUNC2(netdev);

	lif->ntxq_descs = ring->tx_pending;
	lif->nrxq_descs = ring->rx_pending;

	if (running)
		FUNC1(netdev);
	FUNC0(IONIC_LIF_QUEUE_RESET, lif->state);

	return 0;
}