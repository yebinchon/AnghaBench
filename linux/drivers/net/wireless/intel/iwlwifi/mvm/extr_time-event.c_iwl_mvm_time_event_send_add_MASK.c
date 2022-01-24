#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct iwl_time_event_cmd {int /*<<< orphan*/  id; int /*<<< orphan*/  duration; } ;
struct iwl_notification_wait {int dummy; } ;
struct iwl_mvm_time_event_data {scalar_t__ id; int /*<<< orphan*/  list; void* duration; struct ieee80211_vif* vif; } ;
struct iwl_mvm {int /*<<< orphan*/  time_event_lock; int /*<<< orphan*/  notif_wait; int /*<<< orphan*/  time_event_list; int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,char*,int) ; 
 scalar_t__ TE_MAX ; 
#define  TIME_EVENT_CMD 128 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct iwl_notification_wait*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iwl_mvm_time_event_data*) ; 
 int FUNC6 (struct iwl_mvm*,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int,struct iwl_time_event_cmd*) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_mvm*,struct iwl_mvm_time_event_data*) ; 
 int /*<<< orphan*/  iwl_mvm_time_event_response ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct iwl_notification_wait*) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct iwl_notification_wait*,int) ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct iwl_mvm *mvm,
				       struct ieee80211_vif *vif,
				       struct iwl_mvm_time_event_data *te_data,
				       struct iwl_time_event_cmd *te_cmd)
{
	static const u16 time_event_response[] = { TIME_EVENT_CMD };
	struct iwl_notification_wait wait_time_event;
	int ret;

	FUNC12(&mvm->mutex);

	FUNC1(mvm, "Add new TE, duration %d TU\n",
		     FUNC10(te_cmd->duration));

	FUNC13(&mvm->time_event_lock);
	if (FUNC3(te_data->id != TE_MAX)) {
		FUNC14(&mvm->time_event_lock);
		return -EIO;
	}
	te_data->vif = vif;
	te_data->duration = FUNC10(te_cmd->duration);
	te_data->id = FUNC10(te_cmd->id);
	FUNC11(&te_data->list, &mvm->time_event_list);
	FUNC14(&mvm->time_event_lock);

	/*
	 * Use a notification wait, which really just processes the
	 * command response and doesn't wait for anything, in order
	 * to be able to process the response and get the UID inside
	 * the RX path. Using CMD_WANT_SKB doesn't work because it
	 * stores the buffer and then wakes up this thread, by which
	 * time another notification (that the time event started)
	 * might already be processed unsuccessfully.
	 */
	FUNC5(&mvm->notif_wait, &wait_time_event,
				   time_event_response,
				   FUNC0(time_event_response),
				   iwl_mvm_time_event_response, te_data);

	ret = FUNC6(mvm, TIME_EVENT_CMD, 0,
					    sizeof(*te_cmd), te_cmd);
	if (ret) {
		FUNC2(mvm, "Couldn't send TIME_EVENT_CMD: %d\n", ret);
		FUNC8(&mvm->notif_wait, &wait_time_event);
		goto out_clear_te;
	}

	/* No need to wait for anything, so just pass 1 (0 isn't valid) */
	ret = FUNC9(&mvm->notif_wait, &wait_time_event, 1);
	/* should never fail */
	FUNC4(ret);

	if (ret) {
 out_clear_te:
		FUNC13(&mvm->time_event_lock);
		FUNC7(mvm, te_data);
		FUNC14(&mvm->time_event_lock);
	}
	return ret;
}