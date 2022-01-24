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
struct sk_buff {int /*<<< orphan*/  len; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_errors; } ;
struct net_device {TYPE_2__ stats; } ;
struct bcm_enet_priv {size_t tx_desc_count; size_t tx_ring_size; size_t tx_dirty_desc; int /*<<< orphan*/  tx_lock; TYPE_1__* pdev; struct sk_buff** tx_skb; struct bcm_enet_desc* tx_desc_cpu; } ;
struct bcm_enet_desc {int len_stat; int /*<<< orphan*/  address; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DMADESC_OWNER_MASK ; 
 int DMADESC_UNDER_MASK ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bcm_enet_priv* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev, int force)
{
	struct bcm_enet_priv *priv;
	int released;

	priv = FUNC2(dev);
	released = 0;

	while (priv->tx_desc_count < priv->tx_ring_size) {
		struct bcm_enet_desc *desc;
		struct sk_buff *skb;

		/* We run in a bh and fight against start_xmit, which
		 * is called with bh disabled  */
		FUNC6(&priv->tx_lock);

		desc = &priv->tx_desc_cpu[priv->tx_dirty_desc];

		if (!force && (desc->len_stat & DMADESC_OWNER_MASK)) {
			FUNC7(&priv->tx_lock);
			break;
		}

		/* ensure other field of the descriptor were not read
		 * before we checked ownership */
		FUNC5();

		skb = priv->tx_skb[priv->tx_dirty_desc];
		priv->tx_skb[priv->tx_dirty_desc] = NULL;
		FUNC1(&priv->pdev->dev, desc->address, skb->len,
				 DMA_TO_DEVICE);

		priv->tx_dirty_desc++;
		if (priv->tx_dirty_desc == priv->tx_ring_size)
			priv->tx_dirty_desc = 0;
		priv->tx_desc_count++;

		FUNC7(&priv->tx_lock);

		if (desc->len_stat & DMADESC_UNDER_MASK)
			dev->stats.tx_errors++;

		FUNC0(skb);
		released++;
	}

	if (FUNC3(dev) && released)
		FUNC4(dev);

	return released;
}