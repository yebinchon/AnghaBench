#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int flags; int /*<<< orphan*/  phydev; } ;
struct gfar_private {int device_flags; int num_rx_queues; int num_tx_queues; int /*<<< orphan*/  state; TYPE_2__** tx_queue; TYPE_1__** rx_queue; } ;
struct ethtool_coalesce {scalar_t__ rx_coalesce_usecs; scalar_t__ rx_max_coalesced_frames; scalar_t__ tx_coalesce_usecs; scalar_t__ tx_max_coalesced_frames; } ;
struct TYPE_4__ {int txcoalescing; void* txic; } ;
struct TYPE_3__ {int rxcoalescing; void* rxic; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int EOPNOTSUPP ; 
 int FSL_GIANFAR_DEV_HAS_COALESCE ; 
 scalar_t__ GFAR_MAX_COAL_FRAMES ; 
 scalar_t__ GFAR_MAX_COAL_USECS ; 
 int /*<<< orphan*/  GFAR_RESETTING ; 
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct gfar_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct gfar_private*,scalar_t__) ; 
 void* FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*,scalar_t__) ; 
 struct gfar_private* FUNC6 (struct net_device*) ; 
 int FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev,
			  struct ethtool_coalesce *cvals)
{
	struct gfar_private *priv = FUNC6(dev);
	int i, err = 0;

	if (!(priv->device_flags & FSL_GIANFAR_DEV_HAS_COALESCE))
		return -EOPNOTSUPP;

	if (!dev->phydev)
		return -ENODEV;

	/* Check the bounds of the values */
	if (cvals->rx_coalesce_usecs > GFAR_MAX_COAL_USECS) {
		FUNC5(dev, "Coalescing is limited to %d microseconds\n",
			    GFAR_MAX_COAL_USECS);
		return -EINVAL;
	}

	if (cvals->rx_max_coalesced_frames > GFAR_MAX_COAL_FRAMES) {
		FUNC5(dev, "Coalescing is limited to %d frames\n",
			    GFAR_MAX_COAL_FRAMES);
		return -EINVAL;
	}

	/* Check the bounds of the values */
	if (cvals->tx_coalesce_usecs > GFAR_MAX_COAL_USECS) {
		FUNC5(dev, "Coalescing is limited to %d microseconds\n",
			    GFAR_MAX_COAL_USECS);
		return -EINVAL;
	}

	if (cvals->tx_max_coalesced_frames > GFAR_MAX_COAL_FRAMES) {
		FUNC5(dev, "Coalescing is limited to %d frames\n",
			    GFAR_MAX_COAL_FRAMES);
		return -EINVAL;
	}

	while (FUNC9(GFAR_RESETTING, &priv->state))
		FUNC1();

	/* Set up rx coalescing */
	if ((cvals->rx_coalesce_usecs == 0) ||
	    (cvals->rx_max_coalesced_frames == 0)) {
		for (i = 0; i < priv->num_rx_queues; i++)
			priv->rx_queue[i]->rxcoalescing = 0;
	} else {
		for (i = 0; i < priv->num_rx_queues; i++)
			priv->rx_queue[i]->rxcoalescing = 1;
	}

	for (i = 0; i < priv->num_rx_queues; i++) {
		priv->rx_queue[i]->rxic = FUNC4(
			cvals->rx_max_coalesced_frames,
			FUNC3(priv, cvals->rx_coalesce_usecs));
	}

	/* Set up tx coalescing */
	if ((cvals->tx_coalesce_usecs == 0) ||
	    (cvals->tx_max_coalesced_frames == 0)) {
		for (i = 0; i < priv->num_tx_queues; i++)
			priv->tx_queue[i]->txcoalescing = 0;
	} else {
		for (i = 0; i < priv->num_tx_queues; i++)
			priv->tx_queue[i]->txcoalescing = 1;
	}

	for (i = 0; i < priv->num_tx_queues; i++) {
		priv->tx_queue[i]->txic = FUNC4(
			cvals->tx_max_coalesced_frames,
			FUNC3(priv, cvals->tx_coalesce_usecs));
	}

	if (dev->flags & IFF_UP) {
		FUNC8(dev);
		err = FUNC7(dev);
	} else {
		FUNC2(priv);
	}

	FUNC0(GFAR_RESETTING, &priv->state);

	return err;
}