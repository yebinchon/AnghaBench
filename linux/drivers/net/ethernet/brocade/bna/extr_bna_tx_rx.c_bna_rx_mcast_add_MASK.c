#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct bna_rxf {void (* cam_fltr_cbfn ) (struct bnad*,struct bna_rx*) ;struct bnad* cam_fltr_cbarg; int /*<<< orphan*/  mcast_pending_add_q; TYPE_1__* rx; int /*<<< orphan*/  mcast_active_q; } ;
struct bna_rx {TYPE_2__* bna; struct bna_rxf rxf; } ;
struct bna_mac {int /*<<< orphan*/  qe; int /*<<< orphan*/  addr; } ;
typedef  enum bna_cb_status { ____Placeholder_bna_cb_status } bna_cb_status ;
struct TYPE_4__ {struct bnad* bnad; } ;
struct TYPE_3__ {int /*<<< orphan*/  bna; } ;

/* Variables and functions */
 int BNA_CB_MCAST_LIST_FULL ; 
 int BNA_CB_SUCCESS ; 
 int /*<<< orphan*/  RXF_E_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (struct bna_rxf*,int /*<<< orphan*/ ) ; 
 struct bna_mac* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

enum bna_cb_status
FUNC6(struct bna_rx *rx, const u8 *addr,
		 void (*cbfn)(struct bnad *, struct bna_rx *))
{
	struct bna_rxf *rxf = &rx->rxf;
	struct bna_mac *mac;

	/* Check if already added or pending addition */
	if (FUNC2(&rxf->mcast_active_q, addr) ||
		FUNC2(&rxf->mcast_pending_add_q, addr)) {
		if (cbfn)
			cbfn(rx->bna->bnad, rx);
		return BNA_CB_SUCCESS;
	}

	mac = FUNC1(FUNC3(rxf->rx->bna));
	if (mac == NULL)
		return BNA_CB_MCAST_LIST_FULL;
	FUNC4(mac->addr, addr);
	FUNC5(&mac->qe, &rxf->mcast_pending_add_q);

	rxf->cam_fltr_cbfn = cbfn;
	rxf->cam_fltr_cbarg = rx->bna->bnad;

	FUNC0(rxf, RXF_E_CONFIG);

	return BNA_CB_SUCCESS;
}