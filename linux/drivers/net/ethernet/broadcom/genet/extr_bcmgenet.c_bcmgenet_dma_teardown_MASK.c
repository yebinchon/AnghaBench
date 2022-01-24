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
struct bcmgenet_priv {TYPE_1__* hw_params; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int rx_queues; int tx_queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_CTRL ; 
 int DMA_DISABLED ; 
 int DMA_EN ; 
 int DMA_RING_BUF_EN_SHIFT ; 
 int /*<<< orphan*/  DMA_STATUS ; 
 int DMA_TIMEOUT_VAL ; 
 int ETIMEDOUT ; 
 int FUNC0 (struct bcmgenet_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bcmgenet_priv*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bcmgenet_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bcmgenet_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct bcmgenet_priv *priv)
{
	int ret = 0;
	int timeout = 0;
	u32 reg;
	u32 dma_ctrl;
	int i;

	/* Disable TDMA to stop add more frames in TX DMA */
	reg = FUNC2(priv, DMA_CTRL);
	reg &= ~DMA_EN;
	FUNC3(priv, reg, DMA_CTRL);

	/* Check TDMA status register to confirm TDMA is disabled */
	while (timeout++ < DMA_TIMEOUT_VAL) {
		reg = FUNC2(priv, DMA_STATUS);
		if (reg & DMA_DISABLED)
			break;

		FUNC5(1);
	}

	if (timeout == DMA_TIMEOUT_VAL) {
		FUNC4(priv->dev, "Timed out while disabling TX DMA\n");
		ret = -ETIMEDOUT;
	}

	/* Wait 10ms for packet drain in both tx and rx dma */
	FUNC6(10000, 20000);

	/* Disable RDMA */
	reg = FUNC0(priv, DMA_CTRL);
	reg &= ~DMA_EN;
	FUNC1(priv, reg, DMA_CTRL);

	timeout = 0;
	/* Check RDMA status register to confirm RDMA is disabled */
	while (timeout++ < DMA_TIMEOUT_VAL) {
		reg = FUNC0(priv, DMA_STATUS);
		if (reg & DMA_DISABLED)
			break;

		FUNC5(1);
	}

	if (timeout == DMA_TIMEOUT_VAL) {
		FUNC4(priv->dev, "Timed out while disabling RX DMA\n");
		ret = -ETIMEDOUT;
	}

	dma_ctrl = 0;
	for (i = 0; i < priv->hw_params->rx_queues; i++)
		dma_ctrl |= (1 << (i + DMA_RING_BUF_EN_SHIFT));
	reg = FUNC0(priv, DMA_CTRL);
	reg &= ~dma_ctrl;
	FUNC1(priv, reg, DMA_CTRL);

	dma_ctrl = 0;
	for (i = 0; i < priv->hw_params->tx_queues; i++)
		dma_ctrl |= (1 << (i + DMA_RING_BUF_EN_SHIFT));
	reg = FUNC2(priv, DMA_CTRL);
	reg &= ~dma_ctrl;
	FUNC3(priv, reg, DMA_CTRL);

	return ret;
}