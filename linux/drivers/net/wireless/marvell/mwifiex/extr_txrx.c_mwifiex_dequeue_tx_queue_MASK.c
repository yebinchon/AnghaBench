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
struct sk_buff {int len; } ;
struct mwifiex_txinfo {int flags; int /*<<< orphan*/  aggr_num; } ;
struct mwifiex_tx_param {int next_pkt_len; } ;
struct mwifiex_adapter {int /*<<< orphan*/  tx_data_q; int /*<<< orphan*/  tx_queued; } ;

/* Variables and functions */
 int MWIFIEX_BUF_FLAG_AGGR_PKT ; 
 struct mwifiex_txinfo* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct mwifiex_adapter*,struct sk_buff*,struct mwifiex_tx_param*) ; 
 int /*<<< orphan*/  FUNC4 (struct mwifiex_adapter*) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct mwifiex_adapter *adapter)
{
	struct sk_buff *skb, *skb_next;
	struct mwifiex_txinfo *tx_info;
	struct mwifiex_tx_param tx_param;

	skb = FUNC5(&adapter->tx_data_q);
	if (!skb)
		return -1;

	tx_info = FUNC0(skb);
	if (tx_info->flags & MWIFIEX_BUF_FLAG_AGGR_PKT)
		FUNC2(tx_info->aggr_num, &adapter->tx_queued);
	else
		FUNC1(&adapter->tx_queued);

	if (!FUNC7(&adapter->tx_data_q))
		skb_next = FUNC6(&adapter->tx_data_q);
	else
		skb_next = NULL;
	tx_param.next_pkt_len = ((skb_next) ? skb_next->len : 0);
	if (!tx_param.next_pkt_len) {
		if (!FUNC4(adapter))
			tx_param.next_pkt_len = 1;
	}
	return FUNC3(adapter, skb, &tx_param);
}