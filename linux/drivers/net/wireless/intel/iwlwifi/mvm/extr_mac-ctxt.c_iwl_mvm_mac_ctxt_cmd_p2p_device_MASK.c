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
typedef  int /*<<< orphan*/  u32 ;
struct iwl_mvm_go_iterator_data {scalar_t__ go_active; } ;
struct iwl_mvm {int /*<<< orphan*/  hw; } ;
struct TYPE_2__ {void* is_disc_extended; } ;
struct iwl_mac_ctx_cmd {TYPE_1__ p2p_dev; void* filter_flags; } ;
struct ieee80211_vif {scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_IFACE_ITER_RESUME_ALL ; 
 int MAC_FILTER_IN_PROBE_REQUEST ; 
 scalar_t__ NL80211_IFTYPE_P2P_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iwl_mvm_go_iterator_data*) ; 
 int /*<<< orphan*/  iwl_mvm_go_iterator ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*,struct ieee80211_vif*,struct iwl_mac_ctx_cmd*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct iwl_mvm*,struct iwl_mac_ctx_cmd*) ; 

__attribute__((used)) static int FUNC5(struct iwl_mvm *mvm,
					   struct ieee80211_vif *vif,
					   u32 action)
{
	struct iwl_mac_ctx_cmd cmd = {};
	struct iwl_mvm_go_iterator_data data = {};

	FUNC0(vif->type != NL80211_IFTYPE_P2P_DEVICE);

	FUNC3(mvm, vif, &cmd, NULL, action);

	/* Override the filter flags to accept only probe requests */
	cmd.filter_flags = FUNC1(MAC_FILTER_IN_PROBE_REQUEST);

	/*
	 * This flag should be set to true when the P2P Device is
	 * discoverable and there is at least another active P2P GO. Settings
	 * this flag will allow the P2P Device to be discoverable on other
	 * channels in addition to its listen channel.
	 * Note that this flag should not be set in other cases as it opens the
	 * Rx filters on all MAC and increases the number of interrupts.
	 */
	FUNC2(
		mvm->hw, IEEE80211_IFACE_ITER_RESUME_ALL,
		iwl_mvm_go_iterator, &data);

	cmd.p2p_dev.is_disc_extended = FUNC1(data.go_active ? 1 : 0);
	return FUNC4(mvm, &cmd);
}