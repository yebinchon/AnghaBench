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
struct net_device {int /*<<< orphan*/  mem_start; int /*<<< orphan*/  irq; } ;
struct ethtool_ringparam {int tx_pending; int rx_pending; scalar_t__ rx_jumbo_pending; scalar_t__ rx_mini_pending; } ;
struct ethoc {scalar_t__ num_bd; scalar_t__ num_rx; int /*<<< orphan*/  num_tx; } ;

/* Variables and functions */
 int EINVAL ; 
 int INT_MASK_RX ; 
 int INT_MASK_TX ; 
 int /*<<< orphan*/  FUNC0 (struct ethoc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ethoc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ethoc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ethoc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ethoc*,int /*<<< orphan*/ ) ; 
 struct ethoc* FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev,
			       struct ethtool_ringparam *ring)
{
	struct ethoc *priv = FUNC5(dev);

	if (ring->tx_pending < 1 || ring->rx_pending < 1 ||
	    ring->tx_pending + ring->rx_pending > priv->num_bd)
		return -EINVAL;
	if (ring->rx_mini_pending || ring->rx_jumbo_pending)
		return -EINVAL;

	if (FUNC6(dev)) {
		FUNC7(dev);
		FUNC1(priv);
		FUNC0(priv, INT_MASK_TX | INT_MASK_RX);
		FUNC10(dev->irq);
	}

	priv->num_tx = FUNC9(ring->tx_pending);
	priv->num_rx = ring->rx_pending;
	FUNC4(priv, dev->mem_start);

	if (FUNC6(dev)) {
		FUNC2(priv, INT_MASK_TX | INT_MASK_RX);
		FUNC3(priv);
		FUNC8(dev);
	}
	return 0;
}