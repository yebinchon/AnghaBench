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
struct iwl_txq {TYPE_1__* entries; int /*<<< orphan*/  lock; int /*<<< orphan*/  read_ptr; } ;
struct iwl_trans {int /*<<< orphan*/  op_mode; } ;
struct TYPE_2__ {struct sk_buff* skb; int /*<<< orphan*/  meta; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct iwl_txq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*,struct iwl_txq*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct iwl_trans *trans, struct iwl_txq *txq)
{
	/* rd_ptr is bounded by TFD_QUEUE_SIZE_MAX and
	 * idx is bounded by n_window
	 */
	int idx = FUNC2(txq, txq->read_ptr);

	FUNC4(&txq->lock);

	FUNC1(trans, &txq->entries[idx].meta,
				FUNC3(trans, txq, idx));

	/* free SKB */
	if (txq->entries) {
		struct sk_buff *skb;

		skb = txq->entries[idx].skb;

		/* Can be called from irqs-disabled context
		 * If skb is not NULL, it means that the whole queue is being
		 * freed and that the queue is not empty - free the skb
		 */
		if (skb) {
			FUNC0(trans->op_mode, skb);
			txq->entries[idx].skb = NULL;
		}
	}
}