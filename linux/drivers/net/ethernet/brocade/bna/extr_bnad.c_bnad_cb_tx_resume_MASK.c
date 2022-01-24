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
typedef  int /*<<< orphan*/  u32 ;
struct bnad_tx_info {struct bna_tcb** tcb; } ;
struct TYPE_2__ {int /*<<< orphan*/  enet; } ;
struct bnad {int /*<<< orphan*/  perm_addr; TYPE_1__ bna; int /*<<< orphan*/  netdev; } ;
struct bna_tx {scalar_t__ priv; } ;
struct bna_tcb {scalar_t__* hw_consumer_index; int /*<<< orphan*/  flags; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int BNAD_MAX_TXQ_PER_TX ; 
 int /*<<< orphan*/  BNAD_TXQ_TX_STARTED ; 
 int /*<<< orphan*/  FUNC0 (struct bnad*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnad*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  netif_queue_wakeup ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct bnad *bnad, struct bna_tx *tx)
{
	struct bnad_tx_info *tx_info = (struct bnad_tx_info *)tx->priv;
	struct bna_tcb *tcb;
	u32 txq_id;
	int i;

	for (i = 0; i < BNAD_MAX_TXQ_PER_TX; i++) {
		tcb = tx_info->tcb[i];
		if (!tcb)
			continue;
		txq_id = tcb->id;

		FUNC1(FUNC8(BNAD_TXQ_TX_STARTED, &tcb->flags));
		FUNC7(BNAD_TXQ_TX_STARTED, &tcb->flags);
		FUNC1(*(tcb->hw_consumer_index) != 0);

		if (FUNC5(bnad->netdev)) {
			FUNC6(bnad->netdev, txq_id);
			FUNC0(bnad, netif_queue_wakeup);
		}
	}

	/*
	 * Workaround for first ioceth enable failure & we
	 * get a 0 MAC address. We try to get the MAC address
	 * again here.
	 */
	if (FUNC4(bnad->perm_addr)) {
		FUNC2(&bnad->bna.enet, bnad->perm_addr);
		FUNC3(bnad);
	}
}