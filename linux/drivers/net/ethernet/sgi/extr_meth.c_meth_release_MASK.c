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
struct net_device {int /*<<< orphan*/  irq; } ;
struct meth_private {int dma_ctrl; } ;
struct TYPE_3__ {int dma_ctrl; } ;
struct TYPE_4__ {TYPE_1__ eth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int METH_DMA_RX_EN ; 
 int METH_DMA_RX_INT_EN ; 
 int METH_DMA_TX_EN ; 
 int METH_DMA_TX_INT_EN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 TYPE_2__* mace ; 
 int /*<<< orphan*/  FUNC2 (struct meth_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct meth_private*) ; 
 struct meth_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev)
{
	struct meth_private *priv = FUNC4(dev);

	FUNC0("Stopping queue\n");
	FUNC5(dev); /* can't transmit any more */
	/* shut down DMA */
	priv->dma_ctrl &= ~(METH_DMA_TX_EN | METH_DMA_TX_INT_EN |
			    METH_DMA_RX_EN | METH_DMA_RX_INT_EN);
	mace->eth.dma_ctrl = priv->dma_ctrl;
	FUNC1(dev->irq, dev);
	FUNC3(priv);
	FUNC2(priv);

	return 0;
}