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
struct rcar_can_priv {int ier; int /*<<< orphan*/  napi; TYPE_1__* regs; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  ier; int /*<<< orphan*/  isr; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int RCAR_CAN_IER_RXFIE ; 
 int RCAR_CAN_ISR_ERSF ; 
 int RCAR_CAN_ISR_RXFF ; 
 int RCAR_CAN_ISR_TXFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct rcar_can_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct net_device *ndev = dev_id;
	struct rcar_can_priv *priv = FUNC2(ndev);
	u8 isr;

	isr = FUNC5(&priv->regs->isr);
	if (!(isr & priv->ier))
		return IRQ_NONE;

	if (isr & RCAR_CAN_ISR_ERSF)
		FUNC3(ndev);

	if (isr & RCAR_CAN_ISR_TXFF)
		FUNC4(ndev);

	if (isr & RCAR_CAN_ISR_RXFF) {
		if (FUNC1(&priv->napi)) {
			/* Disable Rx FIFO interrupts */
			priv->ier &= ~RCAR_CAN_IER_RXFIE;
			FUNC6(priv->ier, &priv->regs->ier);
			FUNC0(&priv->napi);
		}
	}

	return IRQ_HANDLED;
}