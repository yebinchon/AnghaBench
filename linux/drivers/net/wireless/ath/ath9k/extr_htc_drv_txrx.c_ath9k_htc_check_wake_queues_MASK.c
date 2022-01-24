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
struct TYPE_2__ {scalar_t__ queued_cnt; int flags; int /*<<< orphan*/  tx_lock; } ;
struct ath9k_htc_priv {TYPE_1__ tx; int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int ATH9K_HTC_OP_TX_QUEUES_STOP ; 
 scalar_t__ ATH9K_HTC_TX_THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct ath9k_htc_priv *priv)
{
	FUNC1(&priv->tx.tx_lock);
	if ((priv->tx.queued_cnt < ATH9K_HTC_TX_THRESHOLD) &&
	    (priv->tx.flags & ATH9K_HTC_OP_TX_QUEUES_STOP)) {
		priv->tx.flags &= ~ATH9K_HTC_OP_TX_QUEUES_STOP;
		FUNC0(priv->hw);
	}
	FUNC2(&priv->tx.tx_lock);
}