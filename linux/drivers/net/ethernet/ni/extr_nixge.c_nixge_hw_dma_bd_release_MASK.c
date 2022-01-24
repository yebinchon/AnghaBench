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
struct sk_buff {int dummy; } ;
struct nixge_priv {int /*<<< orphan*/  tx_bd_p; int /*<<< orphan*/ * tx_bd_v; scalar_t__ tx_skb; int /*<<< orphan*/  rx_bd_p; int /*<<< orphan*/ * rx_bd_v; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct net_device {TYPE_1__ dev; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  NIXGE_MAX_JUMBO_FRAME_SIZE ; 
 int RX_BD_NUM ; 
 int TX_BD_NUM ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nixge_priv* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  phys ; 
 int /*<<< orphan*/  sw_id_offset ; 

__attribute__((used)) static void FUNC6(struct net_device *ndev)
{
	struct nixge_priv *priv = FUNC4(ndev);
	dma_addr_t phys_addr;
	struct sk_buff *skb;
	int i;

	for (i = 0; i < RX_BD_NUM; i++) {
		phys_addr = FUNC5(&priv->rx_bd_v[i],
						     phys);

		FUNC3(ndev->dev.parent, phys_addr,
				 NIXGE_MAX_JUMBO_FRAME_SIZE,
				 DMA_FROM_DEVICE);

		skb = (struct sk_buff *)(uintptr_t)
			FUNC5(&priv->rx_bd_v[i],
						 sw_id_offset);
		FUNC0(skb);
	}

	if (priv->rx_bd_v)
		FUNC2(ndev->dev.parent,
				  sizeof(*priv->rx_bd_v) * RX_BD_NUM,
				  priv->rx_bd_v,
				  priv->rx_bd_p);

	if (priv->tx_skb)
		FUNC1(ndev->dev.parent, priv->tx_skb);

	if (priv->tx_bd_v)
		FUNC2(ndev->dev.parent,
				  sizeof(*priv->tx_bd_v) * TX_BD_NUM,
				  priv->tx_bd_v,
				  priv->tx_bd_p);
}