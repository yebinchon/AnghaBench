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
struct iwl_mvm_sta {int reserved_queue; int /*<<< orphan*/  sta_id; } ;
struct iwl_mvm {TYPE_1__* queue_info; } ;
struct ieee80211_sta {int /*<<< orphan*/  tdls; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
struct TYPE_2__ {int /*<<< orphan*/  status; int /*<<< orphan*/  tid_bitmap; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*) ; 
 size_t IWL_MVM_DQA_BSS_CLIENT_QUEUE ; 
 int /*<<< orphan*/  IWL_MVM_DQA_MAX_DATA_QUEUE ; 
 int /*<<< orphan*/  IWL_MVM_DQA_MIN_DATA_QUEUE ; 
 int /*<<< orphan*/  IWL_MVM_INVALID_STA ; 
 int /*<<< orphan*/  IWL_MVM_QUEUE_FREE ; 
 int /*<<< orphan*/  IWL_MVM_QUEUE_RESERVED ; 
 int NL80211_IFTYPE_STATION ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_mvm*) ; 
 int FUNC5 (struct iwl_mvm*,int /*<<< orphan*/ ) ; 
 struct iwl_mvm_sta* FUNC6 (struct ieee80211_sta*) ; 

__attribute__((used)) static int FUNC7(struct iwl_mvm *mvm,
				      struct ieee80211_sta *sta,
				      enum nl80211_iftype vif_type)
{
	struct iwl_mvm_sta *mvmsta = FUNC6(sta);
	int queue;

	/* queue reserving is disabled on new TX path */
	if (FUNC2(FUNC4(mvm)))
		return 0;

	/* run the general cleanup/unsharing of queues */
	FUNC5(mvm, IWL_MVM_INVALID_STA);

	/* Make sure we have free resources for this STA */
	if (vif_type == NL80211_IFTYPE_STATION && !sta->tdls &&
	    !mvm->queue_info[IWL_MVM_DQA_BSS_CLIENT_QUEUE].tid_bitmap &&
	    (mvm->queue_info[IWL_MVM_DQA_BSS_CLIENT_QUEUE].status ==
	     IWL_MVM_QUEUE_FREE))
		queue = IWL_MVM_DQA_BSS_CLIENT_QUEUE;
	else
		queue = FUNC3(mvm, mvmsta->sta_id,
						IWL_MVM_DQA_MIN_DATA_QUEUE,
						IWL_MVM_DQA_MAX_DATA_QUEUE);
	if (queue < 0) {
		/* try again - this time kick out a queue if needed */
		queue = FUNC5(mvm, mvmsta->sta_id);
		if (queue < 0) {
			FUNC1(mvm, "No available queues for new station\n");
			return -ENOSPC;
		}
	}
	mvm->queue_info[queue].status = IWL_MVM_QUEUE_RESERVED;

	mvmsta->reserved_queue = queue;

	FUNC0(mvm, "Reserving data queue #%d for sta_id %d\n",
			    queue, mvmsta->sta_id);

	return 0;
}