#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct bnad_rx_info {scalar_t__ rx_id; int /*<<< orphan*/ * rx; TYPE_4__* rx_ctrl; } ;
struct TYPE_6__ {int /*<<< orphan*/  rx_comp; } ;
struct bnad {int cfg_flags; int /*<<< orphan*/  bna_lock; TYPE_2__ bnad_completions; int /*<<< orphan*/  dim_timer; int /*<<< orphan*/  run_flags; TYPE_1__* rx_res_info; struct bna_rx_config* rx_config; struct bnad_rx_info* rx_info; } ;
struct bna_rx_config {int /*<<< orphan*/  num_paths; } ;
struct bna_res_info {int dummy; } ;
struct TYPE_8__ {TYPE_3__* ccb; } ;
struct TYPE_7__ {scalar_t__ intr_type; } ;
struct TYPE_5__ {struct bna_res_info* res_info; } ;

/* Variables and functions */
 int BNAD_CF_DIM_ENABLED ; 
 int /*<<< orphan*/  BNAD_RF_DIM_TIMER_RUNNING ; 
 int /*<<< orphan*/  BNA_HARD_CLEANUP ; 
 scalar_t__ BNA_INTR_T_MSIX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bnad_cb_rx_disabled ; 
 int /*<<< orphan*/  FUNC2 (struct bnad*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct bnad*,struct bnad_rx_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bnad*,struct bna_res_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void
FUNC12(struct bnad *bnad, u32 rx_id)
{
	struct bnad_rx_info *rx_info = &bnad->rx_info[rx_id];
	struct bna_rx_config *rx_config = &bnad->rx_config[rx_id];
	struct bna_res_info *res_info = &bnad->rx_res_info[rx_id].res_info[0];
	unsigned long flags;
	int to_del = 0;

	if (!rx_info->rx)
		return;

	if (0 == rx_id) {
		FUNC8(&bnad->bna_lock, flags);
		if (bnad->cfg_flags & BNAD_CF_DIM_ENABLED &&
		    FUNC10(BNAD_RF_DIM_TIMER_RUNNING, &bnad->run_flags)) {
			FUNC5(BNAD_RF_DIM_TIMER_RUNNING, &bnad->run_flags);
			to_del = 1;
		}
		FUNC9(&bnad->bna_lock, flags);
		if (to_del)
			FUNC6(&bnad->dim_timer);
	}

	FUNC7(&bnad->bnad_completions.rx_comp);
	FUNC8(&bnad->bna_lock, flags);
	FUNC1(rx_info->rx, BNA_HARD_CLEANUP, bnad_cb_rx_disabled);
	FUNC9(&bnad->bna_lock, flags);
	FUNC11(&bnad->bnad_completions.rx_comp);

	if (rx_info->rx_ctrl[0].ccb->intr_type == BNA_INTR_T_MSIX)
		FUNC3(bnad, rx_info, rx_config->num_paths);

	FUNC2(bnad, rx_id);

	FUNC8(&bnad->bna_lock, flags);
	FUNC0(rx_info->rx);

	rx_info->rx = NULL;
	rx_info->rx_id = 0;
	FUNC9(&bnad->bna_lock, flags);

	FUNC4(bnad, res_info);
}