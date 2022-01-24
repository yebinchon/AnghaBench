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
struct net_device {int dummy; } ;
struct ethtool_coalesce {scalar_t__ tx_max_coalesced_frames; scalar_t__ rx_max_coalesced_frames; int rx_coalesce_usecs; scalar_t__ use_adaptive_tx_coalesce; scalar_t__ tx_coalesce_usecs_low; scalar_t__ tx_coalesce_usecs_irq; scalar_t__ tx_coalesce_usecs_high; scalar_t__ tx_coalesce_usecs; } ;
struct bcmgenet_priv {int /*<<< orphan*/ * rx_rings; TYPE_1__* hw_params; } ;
struct TYPE_2__ {unsigned int tx_queues; unsigned int rx_queues; } ;

/* Variables and functions */
 size_t DESC_INDEX ; 
 scalar_t__ DMA_INTR_THRESHOLD_MASK ; 
 int /*<<< orphan*/  DMA_MBUF_DONE_THRESH ; 
 int DMA_TIMEOUT_MASK ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ethtool_coalesce*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcmgenet_priv*,size_t,scalar_t__,int /*<<< orphan*/ ) ; 
 struct bcmgenet_priv* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev,
				 struct ethtool_coalesce *ec)
{
	struct bcmgenet_priv *priv = FUNC2(dev);
	unsigned int i;

	/* Base system clock is 125Mhz, DMA timeout is this reference clock
	 * divided by 1024, which yields roughly 8.192us, our maximum value
	 * has to fit in the DMA_TIMEOUT_MASK (16 bits)
	 */
	if (ec->tx_max_coalesced_frames > DMA_INTR_THRESHOLD_MASK ||
	    ec->tx_max_coalesced_frames == 0 ||
	    ec->rx_max_coalesced_frames > DMA_INTR_THRESHOLD_MASK ||
	    ec->rx_coalesce_usecs > (DMA_TIMEOUT_MASK * 8) + 1)
		return -EINVAL;

	if (ec->rx_coalesce_usecs == 0 && ec->rx_max_coalesced_frames == 0)
		return -EINVAL;

	/* GENET TDMA hardware does not support a configurable timeout, but will
	 * always generate an interrupt either after MBDONE packets have been
	 * transmitted, or when the ring is empty.
	 */
	if (ec->tx_coalesce_usecs || ec->tx_coalesce_usecs_high ||
	    ec->tx_coalesce_usecs_irq || ec->tx_coalesce_usecs_low ||
	    ec->use_adaptive_tx_coalesce)
		return -EOPNOTSUPP;

	/* Program all TX queues with the same values, as there is no
	 * ethtool knob to do coalescing on a per-queue basis
	 */
	for (i = 0; i < priv->hw_params->tx_queues; i++)
		FUNC1(priv, i,
					  ec->tx_max_coalesced_frames,
					  DMA_MBUF_DONE_THRESH);
	FUNC1(priv, DESC_INDEX,
				  ec->tx_max_coalesced_frames,
				  DMA_MBUF_DONE_THRESH);

	for (i = 0; i < priv->hw_params->rx_queues; i++)
		FUNC0(&priv->rx_rings[i], ec);
	FUNC0(&priv->rx_rings[DESC_INDEX], ec);

	return 0;
}