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
struct iwl_tof_range_abort_cmd {int /*<<< orphan*/  request_id; } ;
struct TYPE_2__ {struct cfg80211_pmsr_request* req; } ;
struct iwl_mvm {TYPE_1__ ftm_initiator; int /*<<< orphan*/  mutex; } ;
struct cfg80211_pmsr_request {int /*<<< orphan*/  cookie; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*) ; 
 int /*<<< orphan*/  LOCATION_GROUP ; 
 int /*<<< orphan*/  TOF_RANGE_ABORT_CMD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwl_tof_range_abort_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct iwl_mvm *mvm, struct cfg80211_pmsr_request *req)
{
	struct iwl_tof_range_abort_cmd cmd = {
		.request_id = req->cookie,
	};

	FUNC3(&mvm->mutex);

	if (req != mvm->ftm_initiator.req)
		return;

	if (FUNC2(mvm, FUNC1(TOF_RANGE_ABORT_CMD,
						 LOCATION_GROUP, 0),
				 0, sizeof(cmd), &cmd))
		FUNC0(mvm, "failed to abort FTM process\n");
}