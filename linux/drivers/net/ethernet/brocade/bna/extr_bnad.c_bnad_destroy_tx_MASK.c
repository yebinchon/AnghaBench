#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct bnad_tx_info {scalar_t__ tx_id; int /*<<< orphan*/ * tx; TYPE_3__** tcb; } ;
struct TYPE_5__ {int /*<<< orphan*/  tx_comp; } ;
struct bnad {int /*<<< orphan*/  bna_lock; int /*<<< orphan*/  num_txq_per_tx; TYPE_2__ bnad_completions; TYPE_1__* tx_res_info; struct bnad_tx_info* tx_info; } ;
struct bna_res_info {int dummy; } ;
struct TYPE_6__ {scalar_t__ intr_type; } ;
struct TYPE_4__ {struct bna_res_info* res_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNA_HARD_CLEANUP ; 
 scalar_t__ BNA_INTR_T_MSIX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bnad_cb_tx_disabled ; 
 int /*<<< orphan*/  FUNC2 (struct bnad*,struct bnad_tx_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnad*,struct bna_res_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(struct bnad *bnad, u32 tx_id)
{
	struct bnad_tx_info *tx_info = &bnad->tx_info[tx_id];
	struct bna_res_info *res_info = &bnad->tx_res_info[tx_id].res_info[0];
	unsigned long flags;

	if (!tx_info->tx)
		return;

	FUNC4(&bnad->bnad_completions.tx_comp);
	FUNC5(&bnad->bna_lock, flags);
	FUNC1(tx_info->tx, BNA_HARD_CLEANUP, bnad_cb_tx_disabled);
	FUNC6(&bnad->bna_lock, flags);
	FUNC7(&bnad->bnad_completions.tx_comp);

	if (tx_info->tcb[0]->intr_type == BNA_INTR_T_MSIX)
		FUNC2(bnad, tx_info,
			bnad->num_txq_per_tx);

	FUNC5(&bnad->bna_lock, flags);
	FUNC0(tx_info->tx);
	FUNC6(&bnad->bna_lock, flags);

	tx_info->tx = NULL;
	tx_info->tx_id = 0;

	FUNC3(bnad, res_info);
}