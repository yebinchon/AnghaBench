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
struct xcan_priv {int (* read_reg ) (struct xcan_priv*,int /*<<< orphan*/ ) ;int tx_head; int tx_max; int tx_tail; int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  (* write_reg ) (struct xcan_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  XCAN_ICR_OFFSET ; 
 int /*<<< orphan*/  XCAN_IXR_TXFEMP_MASK ; 
 int /*<<< orphan*/  XCAN_SR_OFFSET ; 
 int XCAN_SR_TXFLL_MASK ; 
 int /*<<< orphan*/  XCAN_TXFIFO_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct net_device*,int) ; 
 struct xcan_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC5 (struct xcan_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xcan_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct xcan_priv*,struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, struct net_device *ndev)
{
	struct xcan_priv *priv = FUNC1(ndev);
	unsigned long flags;

	/* Check if the TX buffer is full */
	if (FUNC7(priv->read_reg(priv, XCAN_SR_OFFSET) &
			XCAN_SR_TXFLL_MASK))
		return -ENOSPC;

	FUNC0(skb, ndev, priv->tx_head % priv->tx_max);

	FUNC3(&priv->tx_lock, flags);

	priv->tx_head++;

	FUNC8(priv, skb, XCAN_TXFIFO_OFFSET);

	/* Clear TX-FIFO-empty interrupt for xcan_tx_interrupt() */
	if (priv->tx_max > 1)
		priv->write_reg(priv, XCAN_ICR_OFFSET, XCAN_IXR_TXFEMP_MASK);

	/* Check if the TX buffer is full */
	if ((priv->tx_head - priv->tx_tail) == priv->tx_max)
		FUNC2(ndev);

	FUNC4(&priv->tx_lock, flags);

	return 0;
}