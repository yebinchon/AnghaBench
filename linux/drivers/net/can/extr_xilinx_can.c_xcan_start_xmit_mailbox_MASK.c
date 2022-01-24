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
struct xcan_priv {int (* read_reg ) (struct xcan_priv*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  (* write_reg ) (struct xcan_priv*,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  tx_head; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOSPC ; 
 int /*<<< orphan*/  XCAN_TRR_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XCAN_TX_MAILBOX_IDX ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ) ; 
 struct xcan_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC7 (struct xcan_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct xcan_priv*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct xcan_priv*,struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *skb, struct net_device *ndev)
{
	struct xcan_priv *priv = FUNC3(ndev);
	unsigned long flags;

	if (FUNC9(priv->read_reg(priv, XCAN_TRR_OFFSET) &
		     FUNC0(XCAN_TX_MAILBOX_IDX)))
		return -ENOSPC;

	FUNC2(skb, ndev, 0);

	FUNC5(&priv->tx_lock, flags);

	priv->tx_head++;

	FUNC10(priv, skb,
			 FUNC1(XCAN_TX_MAILBOX_IDX));

	/* Mark buffer as ready for transmit */
	priv->write_reg(priv, XCAN_TRR_OFFSET, FUNC0(XCAN_TX_MAILBOX_IDX));

	FUNC4(ndev);

	FUNC6(&priv->tx_lock, flags);

	return 0;
}