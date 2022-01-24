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
struct htc_target {int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  cred_dist_list; int /*<<< orphan*/  credit_info; struct htc_endpoint* endpoint; } ;
struct TYPE_2__ {int dist_flags; int /*<<< orphan*/  txq_depth; } ;
struct htc_endpoint {scalar_t__ svc_id; int /*<<< orphan*/  txq; TYPE_1__ cred_dist; } ;
typedef  enum htc_endpoint_id { ____Placeholder_htc_endpoint_id } htc_endpoint_id ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_HTC ; 
 int /*<<< orphan*/  HTC_CREDIT_DIST_ACTIVITY_CHANGE ; 
 int HTC_EP_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct htc_target*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct htc_target *target,
					     enum htc_endpoint_id eid,
					     bool active)
{
	struct htc_endpoint *endpoint = &target->endpoint[eid];
	bool dist = false;

	if (endpoint->svc_id == 0) {
		FUNC0(1);
		return;
	}

	FUNC5(&target->tx_lock);

	if (active) {
		if (!(endpoint->cred_dist.dist_flags & HTC_EP_ACTIVE)) {
			endpoint->cred_dist.dist_flags |= HTC_EP_ACTIVE;
			dist = true;
		}
	} else {
		if (endpoint->cred_dist.dist_flags & HTC_EP_ACTIVE) {
			endpoint->cred_dist.dist_flags &= ~HTC_EP_ACTIVE;
			dist = true;
		}
	}

	if (dist) {
		endpoint->cred_dist.txq_depth =
			FUNC3(&endpoint->txq);

		FUNC2(ATH6KL_DBG_HTC,
			   "htc tx activity ctxt 0x%p dist 0x%p\n",
			   target->credit_info, &target->cred_dist_list);

		FUNC1(target->credit_info,
					 &target->cred_dist_list,
					 HTC_CREDIT_DIST_ACTIVITY_CHANGE);
	}

	FUNC6(&target->tx_lock);

	if (dist && !active)
		FUNC4(target);
}