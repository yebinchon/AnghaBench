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
struct bcmgenet_priv {TYPE_1__* hw_params; } ;
struct TYPE_2__ {int rx_queues; int rx_bds_per_q; } ;

/* Variables and functions */
 int DESC_INDEX ; 
 int /*<<< orphan*/  DMA_CTRL ; 
 int DMA_EN ; 
 int DMA_RING_BUF_EN_SHIFT ; 
 int /*<<< orphan*/  DMA_RING_CFG ; 
 int GENET_Q16_RX_BD_CNT ; 
 int TOTAL_DESC ; 
 int FUNC0 (struct bcmgenet_priv*,int,int,int,int) ; 
 int FUNC1 (struct bcmgenet_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bcmgenet_priv*,int,int /*<<< orphan*/ ) ; 
 struct bcmgenet_priv* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev)
{
	struct bcmgenet_priv *priv = FUNC3(dev);
	u32 i;
	u32 dma_enable;
	u32 dma_ctrl;
	u32 ring_cfg;
	int ret;

	dma_ctrl = FUNC1(priv, DMA_CTRL);
	dma_enable = dma_ctrl & DMA_EN;
	dma_ctrl &= ~DMA_EN;
	FUNC2(priv, dma_ctrl, DMA_CTRL);

	dma_ctrl = 0;
	ring_cfg = 0;

	/* Initialize Rx priority queues */
	for (i = 0; i < priv->hw_params->rx_queues; i++) {
		ret = FUNC0(priv, i,
					    priv->hw_params->rx_bds_per_q,
					    i * priv->hw_params->rx_bds_per_q,
					    (i + 1) *
					    priv->hw_params->rx_bds_per_q);
		if (ret)
			return ret;

		ring_cfg |= (1 << i);
		dma_ctrl |= (1 << (i + DMA_RING_BUF_EN_SHIFT));
	}

	/* Initialize Rx default queue 16 */
	ret = FUNC0(priv, DESC_INDEX, GENET_Q16_RX_BD_CNT,
				    priv->hw_params->rx_queues *
				    priv->hw_params->rx_bds_per_q,
				    TOTAL_DESC);
	if (ret)
		return ret;

	ring_cfg |= (1 << DESC_INDEX);
	dma_ctrl |= (1 << (DESC_INDEX + DMA_RING_BUF_EN_SHIFT));

	/* Enable rings */
	FUNC2(priv, ring_cfg, DMA_RING_CFG);

	/* Configure ring as descriptor ring and re-enable DMA if enabled */
	if (dma_enable)
		dma_ctrl |= DMA_EN;
	FUNC2(priv, dma_ctrl, DMA_CTRL);

	return 0;
}