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
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct mwifiex_rx_reorder_tbl {int start_win; int win_size; struct sk_buff** rx_reorder_ptr; } ;
struct mwifiex_private {int /*<<< orphan*/  rx_reorder_tbl_lock; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff_head*,struct sk_buff*) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mwifiex_private*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct mwifiex_private *priv,
					 struct mwifiex_rx_reorder_tbl *tbl,
					 int start_win)
{
	struct sk_buff_head list;
	struct sk_buff *skb;
	int pkt_to_send, i;

	FUNC1(&list);
	FUNC5(&priv->rx_reorder_tbl_lock);

	pkt_to_send = (start_win > tbl->start_win) ?
		      FUNC3((start_win - tbl->start_win), tbl->win_size) :
		      tbl->win_size;

	for (i = 0; i < pkt_to_send; ++i) {
		if (tbl->rx_reorder_ptr[i]) {
			skb = tbl->rx_reorder_ptr[i];
			FUNC2(&list, skb);
			tbl->rx_reorder_ptr[i] = NULL;
		}
	}

	/*
	 * We don't have a circular buffer, hence use rotation to simulate
	 * circular buffer
	 */
	for (i = 0; i < tbl->win_size - pkt_to_send; ++i) {
		tbl->rx_reorder_ptr[i] = tbl->rx_reorder_ptr[pkt_to_send + i];
		tbl->rx_reorder_ptr[pkt_to_send + i] = NULL;
	}

	tbl->start_win = start_win;
	FUNC6(&priv->rx_reorder_tbl_lock);

	while ((skb = FUNC0(&list)))
		FUNC4(priv, skb);
}