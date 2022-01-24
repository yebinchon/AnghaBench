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
struct htc_target {int /*<<< orphan*/  tx_lock; } ;
struct htc_packet {int /*<<< orphan*/  list; } ;
struct htc_ep_callbacks {scalar_t__ (* tx_full ) (int /*<<< orphan*/ ,struct htc_packet*) ;} ;
struct TYPE_2__ {int tx_dropped; } ;
struct htc_endpoint {int max_txq_depth; int /*<<< orphan*/  txq; TYPE_1__ ep_st; int /*<<< orphan*/  target; int /*<<< orphan*/  eid; struct htc_ep_callbacks ep_cb; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_HTC ; 
 scalar_t__ HTC_SEND_FULL_DROP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct htc_target*,struct htc_endpoint*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct htc_packet*) ; 

__attribute__((used)) static bool FUNC7(struct htc_target *target,
			      struct htc_endpoint *endpoint,
			      struct htc_packet *tx_pkt)
{
	struct htc_ep_callbacks ep_cb;
	int txq_depth;
	bool overflow = false;

	ep_cb = endpoint->ep_cb;

	FUNC4(&target->tx_lock);
	txq_depth = FUNC2(&endpoint->txq);
	FUNC5(&target->tx_lock);

	if (txq_depth >= endpoint->max_txq_depth)
		overflow = true;

	if (overflow)
		FUNC0(ATH6KL_DBG_HTC,
			   "htc tx overflow ep %d depth %d max %d\n",
			   endpoint->eid, txq_depth,
			   endpoint->max_txq_depth);

	if (overflow && ep_cb.tx_full) {
		if (ep_cb.tx_full(endpoint->target, tx_pkt) ==
		    HTC_SEND_FULL_DROP) {
			endpoint->ep_st.tx_dropped += 1;
			return false;
		}
	}

	FUNC4(&target->tx_lock);
	FUNC3(&tx_pkt->list, &endpoint->txq);
	FUNC5(&target->tx_lock);

	FUNC1(target, endpoint);

	return true;
}