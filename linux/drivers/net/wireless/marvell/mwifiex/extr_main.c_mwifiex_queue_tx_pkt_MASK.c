#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {size_t priority; } ;
struct netdev_queue {int dummy; } ;
struct mwifiex_private {TYPE_1__* adapter; int /*<<< orphan*/  netdev; int /*<<< orphan*/ * wmm_tx_pending; } ;
struct TYPE_3__ {int /*<<< orphan*/  tx_pending; int /*<<< orphan*/  bypass_tx_pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATA ; 
 scalar_t__ MAX_TX_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int* mwifiex_1d_to_wmm_queue ; 
 scalar_t__ FUNC2 (struct mwifiex_private*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct mwifiex_private*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct mwifiex_private*,struct sk_buff*) ; 
 struct netdev_queue* FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC9 (struct netdev_queue*) ; 

int FUNC10(struct mwifiex_private *priv, struct sk_buff *skb)
{
	struct netdev_queue *txq;
	int index = mwifiex_1d_to_wmm_queue[skb->priority];

	if (FUNC1(&priv->wmm_tx_pending[index]) >= MAX_TX_PENDING) {
		txq = FUNC7(priv->netdev, index);
		if (!FUNC8(txq)) {
			FUNC9(txq);
			FUNC3(priv->adapter, DATA,
				    "stop queue: %d\n", index);
		}
	}

	if (FUNC2(priv, skb)) {
		FUNC0(&priv->adapter->tx_pending);
		FUNC0(&priv->adapter->bypass_tx_pending);
		FUNC5(priv, skb);
	 } else {
		FUNC0(&priv->adapter->tx_pending);
		FUNC6(priv, skb);
	 }

	FUNC4(priv->adapter);

	return 0;
}