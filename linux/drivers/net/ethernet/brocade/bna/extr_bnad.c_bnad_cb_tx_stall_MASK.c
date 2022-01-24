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
typedef  int /*<<< orphan*/  u32 ;
struct bnad_tx_info {struct bna_tcb** tcb; } ;
struct bnad {int /*<<< orphan*/  netdev; } ;
struct bna_tx {scalar_t__ priv; } ;
struct bna_tcb {int /*<<< orphan*/  flags; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int BNAD_MAX_TXQ_PER_TX ; 
 int /*<<< orphan*/  BNAD_TXQ_TX_STARTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct bnad *bnad, struct bna_tx *tx)
{
	struct bnad_tx_info *tx_info =
			(struct bnad_tx_info *)tx->priv;
	struct bna_tcb *tcb;
	u32 txq_id;
	int i;

	for (i = 0; i < BNAD_MAX_TXQ_PER_TX; i++) {
		tcb = tx_info->tcb[i];
		if (!tcb)
			continue;
		txq_id = tcb->id;
		FUNC0(BNAD_TXQ_TX_STARTED, &tcb->flags);
		FUNC1(bnad->netdev, txq_id);
	}
}