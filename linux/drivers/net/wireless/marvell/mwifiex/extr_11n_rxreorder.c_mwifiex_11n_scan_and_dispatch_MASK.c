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
struct mwifiex_rx_reorder_tbl {int win_size; int start_win; struct sk_buff** rx_reorder_ptr; } ;
struct mwifiex_private {int /*<<< orphan*/  rx_reorder_tbl_lock; } ;

/* Variables and functions */
 int MAX_TID_VALUE ; 
 struct sk_buff* FUNC0 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff_head*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct mwifiex_private*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct mwifiex_private *priv,
			      struct mwifiex_rx_reorder_tbl *tbl)
{
	struct sk_buff_head list;
	struct sk_buff *skb;
	int i, j, xchg;

	FUNC1(&list);
	FUNC4(&priv->rx_reorder_tbl_lock);

	for (i = 0; i < tbl->win_size; ++i) {
		if (!tbl->rx_reorder_ptr[i])
			break;
		skb = tbl->rx_reorder_ptr[i];
		FUNC2(&list, skb);
		tbl->rx_reorder_ptr[i] = NULL;
	}

	/*
	 * We don't have a circular buffer, hence use rotation to simulate
	 * circular buffer
	 */
	if (i > 0) {
		xchg = tbl->win_size - i;
		for (j = 0; j < xchg; ++j) {
			tbl->rx_reorder_ptr[j] = tbl->rx_reorder_ptr[i + j];
			tbl->rx_reorder_ptr[i + j] = NULL;
		}
	}
	tbl->start_win = (tbl->start_win + i) & (MAX_TID_VALUE - 1);

	FUNC5(&priv->rx_reorder_tbl_lock);

	while ((skb = FUNC0(&list)))
		FUNC3(priv, skb);
}