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
struct bnad_rx_info {int /*<<< orphan*/  rx_cleanup_work; struct bnad_rx_ctrl* rx_ctrl; } ;
struct bnad_rx_ctrl {struct bna_ccb* ccb; } ;
struct bnad {int /*<<< orphan*/  work_q; } ;
struct bna_rx {scalar_t__ priv; } ;
struct bna_ccb {TYPE_1__** rcb; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int BNAD_MAX_RXP_PER_RX ; 
 int /*<<< orphan*/  BNAD_RXQ_STARTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct bnad *bnad, struct bna_rx *rx)
{
	struct bnad_rx_info *rx_info = (struct bnad_rx_info *)rx->priv;
	struct bna_ccb *ccb;
	struct bnad_rx_ctrl *rx_ctrl;
	int i;

	for (i = 0; i < BNAD_MAX_RXP_PER_RX; i++) {
		rx_ctrl = &rx_info->rx_ctrl[i];
		ccb = rx_ctrl->ccb;
		if (!ccb)
			continue;

		FUNC0(BNAD_RXQ_STARTED, &ccb->rcb[0]->flags);

		if (ccb->rcb[1])
			FUNC0(BNAD_RXQ_STARTED, &ccb->rcb[1]->flags);
	}

	FUNC1(bnad->work_q, &rx_info->rx_cleanup_work);
}