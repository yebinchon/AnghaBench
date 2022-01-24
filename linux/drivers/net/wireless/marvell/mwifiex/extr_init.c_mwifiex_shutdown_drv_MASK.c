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
struct sk_buff {int dummy; } ;
struct mwifiex_rxinfo {size_t bss_num; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_dropped; } ;
struct mwifiex_private {TYPE_1__ stats; } ;
struct mwifiex_adapter {scalar_t__ hw_status; size_t priv_num; int /*<<< orphan*/  rx_proc_lock; struct mwifiex_private** priv; int /*<<< orphan*/  rx_pending; int /*<<< orphan*/  rx_data_q; int /*<<< orphan*/  tx_data_q; int /*<<< orphan*/  tx_queued; int /*<<< orphan*/ * curr_cmd; int /*<<< orphan*/  cmd_timer; } ;
typedef  size_t s32 ;

/* Variables and functions */
 int /*<<< orphan*/  MSG ; 
 scalar_t__ MWIFIEX_HW_STATUS_NOT_READY ; 
 struct mwifiex_rxinfo* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  WARN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct mwifiex_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct mwifiex_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct mwifiex_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct mwifiex_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct mwifiex_adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct mwifiex_adapter*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

void
FUNC15(struct mwifiex_adapter *adapter)
{
	struct mwifiex_private *priv;
	s32 i;
	struct sk_buff *skb;

	/* mwifiex already shutdown */
	if (adapter->hw_status == MWIFIEX_HW_STATUS_NOT_READY)
		return;

	/* cancel current command */
	if (adapter->curr_cmd) {
		FUNC8(adapter, WARN,
			    "curr_cmd is still in processing\n");
		FUNC3(&adapter->cmd_timer);
		FUNC10(adapter, adapter->curr_cmd);
		adapter->curr_cmd = NULL;
	}

	/* shut down mwifiex */
	FUNC8(adapter, MSG,
		    "info: shutdown mwifiex...\n");

	/* Clean up Tx/Rx queues and delete BSS priority table */
	for (i = 0; i < adapter->priv_num; i++) {
		if (adapter->priv[i]) {
			priv = adapter->priv[i];

			FUNC7(priv);
			FUNC5(priv);
			FUNC9(priv);
		}
	}

	FUNC2(&adapter->tx_queued, 0);
	while ((skb = FUNC12(&adapter->tx_data_q)))
		FUNC11(adapter, skb, 0, 0);

	FUNC13(&adapter->rx_proc_lock);

	while ((skb = FUNC12(&adapter->rx_data_q))) {
		struct mwifiex_rxinfo *rx_info = FUNC0(skb);

		FUNC1(&adapter->rx_pending);
		priv = adapter->priv[rx_info->bss_num];
		if (priv)
			priv->stats.rx_dropped++;

		FUNC4(skb);
	}

	FUNC14(&adapter->rx_proc_lock);

	FUNC6(adapter);

	adapter->hw_status = MWIFIEX_HW_STATUS_NOT_READY;
}