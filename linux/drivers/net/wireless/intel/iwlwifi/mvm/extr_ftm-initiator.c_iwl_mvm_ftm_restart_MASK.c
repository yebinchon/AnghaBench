#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_4__* req; int /*<<< orphan*/  req_wdev; int /*<<< orphan*/ * responses; } ;
struct iwl_mvm {TYPE_3__ ftm_initiator; int /*<<< orphan*/  mutex; } ;
struct TYPE_7__ {int /*<<< orphan*/  burst_index; } ;
struct cfg80211_pmsr_result {int final; TYPE_2__ ftm; int /*<<< orphan*/  addr; int /*<<< orphan*/  type; int /*<<< orphan*/  host_time; int /*<<< orphan*/  status; } ;
struct TYPE_9__ {int n_peers; TYPE_1__* peers; } ;
struct TYPE_6__ {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NL80211_PMSR_STATUS_FAILURE ; 
 int /*<<< orphan*/  NL80211_PMSR_TYPE_FTM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_4__*,struct cfg80211_pmsr_result*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct iwl_mvm *mvm)
{
	struct cfg80211_pmsr_result result = {
		.status = NL80211_PMSR_STATUS_FAILURE,
		.final = 1,
		.host_time = FUNC3(),
		.type = NL80211_PMSR_TYPE_FTM,
	};
	int i;

	FUNC4(&mvm->mutex);

	if (!mvm->ftm_initiator.req)
		return;

	for (i = 0; i < mvm->ftm_initiator.req->n_peers; i++) {
		FUNC5(result.addr, mvm->ftm_initiator.req->peers[i].addr,
		       ETH_ALEN);
		result.ftm.burst_index = mvm->ftm_initiator.responses[i];

		FUNC1(mvm->ftm_initiator.req_wdev,
				     mvm->ftm_initiator.req,
				     &result, GFP_KERNEL);
	}

	FUNC0(mvm->ftm_initiator.req_wdev,
			       mvm->ftm_initiator.req, GFP_KERNEL);
	FUNC2(mvm);
}