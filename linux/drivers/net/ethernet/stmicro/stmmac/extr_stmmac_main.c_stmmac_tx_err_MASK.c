#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct stmmac_tx_queue {scalar_t__ mss; scalar_t__ cur_tx; scalar_t__ dirty_tx; int /*<<< orphan*/ * dma_tx; TYPE_1__* dma_etx; } ;
struct stmmac_priv {TYPE_3__* dev; int /*<<< orphan*/  mode; scalar_t__ extend_desc; struct stmmac_tx_queue* tx_queue; } ;
struct TYPE_5__ {int /*<<< orphan*/  tx_errors; } ;
struct TYPE_6__ {TYPE_2__ stats; } ;
struct TYPE_4__ {int /*<<< orphan*/  basic; } ;

/* Variables and functions */
 int DMA_TX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct stmmac_priv*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct stmmac_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct stmmac_priv*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct stmmac_priv*,size_t) ; 

__attribute__((used)) static void FUNC8(struct stmmac_priv *priv, u32 chan)
{
	struct stmmac_tx_queue *tx_q = &priv->tx_queue[chan];
	int i;

	FUNC3(FUNC1(priv->dev, chan));

	FUNC7(priv, chan);
	FUNC0(priv, chan);
	for (i = 0; i < DMA_TX_SIZE; i++)
		if (priv->extend_desc)
			FUNC5(priv, &tx_q->dma_etx[i].basic,
					priv->mode, (i == DMA_TX_SIZE - 1));
		else
			FUNC5(priv, &tx_q->dma_tx[i],
					priv->mode, (i == DMA_TX_SIZE - 1));
	tx_q->dirty_tx = 0;
	tx_q->cur_tx = 0;
	tx_q->mss = 0;
	FUNC2(FUNC1(priv->dev, chan));
	FUNC6(priv, chan);

	priv->dev->stats.tx_errors++;
	FUNC4(FUNC1(priv->dev, chan));
}