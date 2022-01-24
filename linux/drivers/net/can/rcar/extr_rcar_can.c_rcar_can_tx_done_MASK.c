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
typedef  int u8 ;
struct rcar_can_priv {int tx_head; size_t tx_tail; TYPE_1__* regs; scalar_t__* tx_dlc; } ;
struct net_device_stats {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {struct net_device_stats stats; } ;
struct TYPE_2__ {int /*<<< orphan*/  isr; int /*<<< orphan*/  tfcr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_LED_EVENT_TX ; 
 size_t RCAR_CAN_FIFO_DEPTH ; 
 int RCAR_CAN_ISR_TXFF ; 
 int RCAR_CAN_TFCR_TFUST ; 
 int RCAR_CAN_TFCR_TFUST_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct rcar_can_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct net_device *ndev)
{
	struct rcar_can_priv *priv = FUNC2(ndev);
	struct net_device_stats *stats = &ndev->stats;
	u8 isr;

	while (1) {
		u8 unsent = FUNC4(&priv->regs->tfcr);

		unsent = (unsent & RCAR_CAN_TFCR_TFUST) >>
			  RCAR_CAN_TFCR_TFUST_SHIFT;
		if (priv->tx_head - priv->tx_tail <= unsent)
			break;
		stats->tx_packets++;
		stats->tx_bytes += priv->tx_dlc[priv->tx_tail %
						RCAR_CAN_FIFO_DEPTH];
		priv->tx_dlc[priv->tx_tail % RCAR_CAN_FIFO_DEPTH] = 0;
		FUNC0(ndev, priv->tx_tail % RCAR_CAN_FIFO_DEPTH);
		priv->tx_tail++;
		FUNC3(ndev);
	}
	/* Clear interrupt */
	isr = FUNC4(&priv->regs->isr);
	FUNC5(isr & ~RCAR_CAN_ISR_TXFF, &priv->regs->isr);
	FUNC1(ndev, CAN_LED_EVENT_TX);
}