#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct netsec_priv {int /*<<< orphan*/  napi; int /*<<< orphan*/  reglock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int NETSEC_IRQ_RX ; 
 int NETSEC_IRQ_TX ; 
 int /*<<< orphan*/  NETSEC_REG_INTEN_CLR ; 
 int /*<<< orphan*/  NETSEC_REG_NRM_RX_STATUS ; 
 int /*<<< orphan*/  NETSEC_REG_NRM_TX_STATUS ; 
 int /*<<< orphan*/  NETSEC_REG_TOP_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct netsec_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct netsec_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct netsec_priv *priv = dev_id;
	u32 val, status = FUNC1(priv, NETSEC_REG_TOP_STATUS);
	unsigned long flags;

	/* Disable interrupts */
	if (status & NETSEC_IRQ_TX) {
		val = FUNC1(priv, NETSEC_REG_NRM_TX_STATUS);
		FUNC2(priv, NETSEC_REG_NRM_TX_STATUS, val);
	}
	if (status & NETSEC_IRQ_RX) {
		val = FUNC1(priv, NETSEC_REG_NRM_RX_STATUS);
		FUNC2(priv, NETSEC_REG_NRM_RX_STATUS, val);
	}

	FUNC3(&priv->reglock, flags);
	FUNC2(priv, NETSEC_REG_INTEN_CLR, NETSEC_IRQ_RX | NETSEC_IRQ_TX);
	FUNC4(&priv->reglock, flags);

	FUNC0(&priv->napi);

	return IRQ_HANDLED;
}