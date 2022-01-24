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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct korina_private {int /*<<< orphan*/  tx_irq; int /*<<< orphan*/  rx_irq; int /*<<< orphan*/  restart_task; int /*<<< orphan*/  napi; TYPE_2__* rx_dma_regs; TYPE_1__* tx_dma_regs; int /*<<< orphan*/  media_check_timer; } ;
struct TYPE_4__ {int /*<<< orphan*/  dmasm; } ;
struct TYPE_3__ {int /*<<< orphan*/  dmasm; } ;

/* Variables and functions */
 int DMA_STAT_DONE ; 
 int DMA_STAT_ERR ; 
 int DMA_STAT_FINI ; 
 int DMA_STAT_HALT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct korina_private* FUNC8 (struct net_device*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev)
{
	struct korina_private *lp = FUNC8(dev);
	u32 tmp;

	FUNC1(&lp->media_check_timer);

	/* Disable interrupts */
	FUNC2(lp->rx_irq);
	FUNC2(lp->tx_irq);

	FUNC5(dev);
	tmp = FUNC9(&lp->tx_dma_regs->dmasm);
	tmp = tmp | DMA_STAT_FINI | DMA_STAT_ERR;
	FUNC10(tmp, &lp->tx_dma_regs->dmasm);

	FUNC4(dev);
	tmp = FUNC9(&lp->rx_dma_regs->dmasm);
	tmp = tmp | DMA_STAT_DONE | DMA_STAT_HALT | DMA_STAT_ERR;
	FUNC10(tmp, &lp->rx_dma_regs->dmasm);

	FUNC7(&lp->napi);

	FUNC0(&lp->restart_task);

	FUNC6(dev);

	FUNC3(lp->rx_irq, dev);
	FUNC3(lp->tx_irq, dev);

	return 0;
}