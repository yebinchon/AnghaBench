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
struct bna_tx {TYPE_1__* bna; int /*<<< orphan*/  (* tx_cleanup_cbfn ) (int /*<<< orphan*/ ,struct bna_tx*) ;int /*<<< orphan*/  (* tx_stall_cbfn ) (int /*<<< orphan*/ ,struct bna_tx*) ;} ;
typedef  enum bna_tx_event { ____Placeholder_bna_tx_event } bna_tx_event ;
struct TYPE_2__ {int /*<<< orphan*/  bnad; } ;

/* Variables and functions */
#define  TX_E_BW_UPDATE 130 
#define  TX_E_FAIL 129 
#define  TX_E_STOP 128 
 int /*<<< orphan*/  FUNC0 (struct bna_tx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct bna_tx*) ; 
 int /*<<< orphan*/  bna_tx_sm_failed ; 
 int /*<<< orphan*/  bna_tx_sm_prio_stop_wait ; 
 int /*<<< orphan*/  bna_tx_sm_stop_wait ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct bna_tx*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct bna_tx*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct bna_tx*) ; 

__attribute__((used)) static void
FUNC6(struct bna_tx *tx, enum bna_tx_event event)
{
	switch (event) {
	case TX_E_STOP:
		FUNC0(tx, bna_tx_sm_stop_wait);
		tx->tx_stall_cbfn(tx->bna->bnad, tx);
		FUNC2(tx);
		break;

	case TX_E_FAIL:
		FUNC0(tx, bna_tx_sm_failed);
		tx->tx_stall_cbfn(tx->bna->bnad, tx);
		tx->tx_cleanup_cbfn(tx->bna->bnad, tx);
		break;

	case TX_E_BW_UPDATE:
		FUNC0(tx, bna_tx_sm_prio_stop_wait);
		break;

	default:
		FUNC1(event);
	}
}