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
typedef  size_t uint ;
typedef  int /*<<< orphan*/  u32 ;
struct bnad {size_t num_tx; size_t num_txq_per_tx; int /*<<< orphan*/  netdev; TYPE_1__* tx_info; int /*<<< orphan*/  run_flags; } ;
struct bna_tcb {int /*<<< orphan*/  flags; int /*<<< orphan*/  id; } ;
typedef  enum bna_link_status { ____Placeholder_bna_link_status } bna_link_status ;
struct TYPE_2__ {struct bna_tcb** tcb; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNAD_RF_CEE_RUNNING ; 
 int /*<<< orphan*/  BNAD_TXQ_TX_STARTED ; 
 int /*<<< orphan*/  FUNC0 (struct bnad*,int /*<<< orphan*/ ) ; 
 int BNA_CEE_UP ; 
 int BNA_LINK_UP ; 
 int /*<<< orphan*/  cee_toggle ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  link_toggle ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  netif_queue_stop ; 
 int /*<<< orphan*/  netif_queue_wakeup ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC10(struct bnad *bnad,
			enum bna_link_status link_status)
{
	bool link_up = false;

	link_up = (link_status == BNA_LINK_UP) || (link_status == BNA_CEE_UP);

	if (link_status == BNA_CEE_UP) {
		if (!FUNC9(BNAD_RF_CEE_RUNNING, &bnad->run_flags))
			FUNC0(bnad, cee_toggle);
		FUNC8(BNAD_RF_CEE_RUNNING, &bnad->run_flags);
	} else {
		if (FUNC9(BNAD_RF_CEE_RUNNING, &bnad->run_flags))
			FUNC0(bnad, cee_toggle);
		FUNC1(BNAD_RF_CEE_RUNNING, &bnad->run_flags);
	}

	if (link_up) {
		if (!FUNC4(bnad->netdev)) {
			uint tx_id, tcb_id;
			FUNC2(bnad->netdev, "link up\n");
			FUNC5(bnad->netdev);
			FUNC0(bnad, link_toggle);
			for (tx_id = 0; tx_id < bnad->num_tx; tx_id++) {
				for (tcb_id = 0; tcb_id < bnad->num_txq_per_tx;
				      tcb_id++) {
					struct bna_tcb *tcb =
					bnad->tx_info[tx_id].tcb[tcb_id];
					u32 txq_id;
					if (!tcb)
						continue;

					txq_id = tcb->id;

					if (FUNC9(BNAD_TXQ_TX_STARTED,
						     &tcb->flags)) {
						/*
						 * Force an immediate
						 * Transmit Schedule */
						FUNC7(
								bnad->netdev,
								txq_id);
						FUNC0(bnad,
							netif_queue_wakeup);
					} else {
						FUNC6(
								bnad->netdev,
								txq_id);
						FUNC0(bnad,
							netif_queue_stop);
					}
				}
			}
		}
	} else {
		if (FUNC4(bnad->netdev)) {
			FUNC2(bnad->netdev, "link down\n");
			FUNC3(bnad->netdev);
			FUNC0(bnad, link_toggle);
		}
	}
}