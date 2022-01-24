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
struct pciefd_rx_dma {int /*<<< orphan*/  msg; int /*<<< orphan*/  irq_status; } ;
struct TYPE_4__ {int /*<<< orphan*/ * echo_skb; } ;
struct TYPE_5__ {size_t echo_idx; int /*<<< orphan*/  echo_lock; int /*<<< orphan*/  ndev; TYPE_1__ can; } ;
struct pciefd_can {scalar_t__ irq_tag; TYPE_2__ ucan; int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  tx_pages_free; int /*<<< orphan*/  irq_status; TYPE_3__* board; struct pciefd_rx_dma* rx_dma_vaddr; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_6__ {int /*<<< orphan*/  pci_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  PCIEFD_REG_SYS_VER1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pciefd_can*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *arg)
{
	struct pciefd_can *priv = arg;
	struct pciefd_rx_dma *rx_dma = priv->rx_dma_vaddr;

	/* INTA mode only to sync with PCIe transaction */
	if (!FUNC2(priv->board->pci_dev))
		(void)FUNC7(priv->board, PCIEFD_REG_SYS_VER1);

	/* read IRQ status from the first 32-bits of the Rx DMA area */
	priv->irq_status = FUNC0(rx_dma->irq_status);

	/* check if this (shared) IRQ is for this CAN */
	if (FUNC6(priv->irq_status) != priv->irq_tag)
		return IRQ_NONE;

	/* handle rx messages (if any) */
	FUNC8(&priv->ucan,
				    rx_dma->msg,
				    FUNC5(priv->irq_status));

	/* handle tx link interrupt (if any) */
	if (FUNC4(priv->irq_status)) {
		unsigned long flags;

		FUNC9(&priv->tx_lock, flags);
		priv->tx_pages_free++;
		FUNC10(&priv->tx_lock, flags);

		/* wake producer up (only if enough room in echo_skb array) */
		FUNC9(&priv->ucan.echo_lock, flags);
		if (!priv->ucan.can.echo_skb[priv->ucan.echo_idx])
			FUNC1(priv->ucan.ndev);

		FUNC10(&priv->ucan.echo_lock, flags);
	}

	/* re-enable Rx DMA transfer for this CAN */
	FUNC3(priv);

	return IRQ_HANDLED;
}