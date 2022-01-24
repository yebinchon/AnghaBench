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
struct iwl_ucode_capabilities {int flags; } ;
struct iwl_mvm {scalar_t__ last_ebs_successful; TYPE_1__* fw; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct TYPE_2__ {struct iwl_ucode_capabilities ucode_capa; } ;

/* Variables and functions */
 scalar_t__ IWL_MVM_ENABLE_EBS ; 
 int IWL_UCODE_TLV_FLAGS_EBS_SUPPORT ; 
 int /*<<< orphan*/  NL80211_BAND_5GHZ ; 
 scalar_t__ NL80211_IFTYPE_P2P_DEVICE ; 
 scalar_t__ FUNC0 (struct iwl_mvm*) ; 
 scalar_t__ FUNC1 (struct iwl_mvm*) ; 
 int FUNC2 (struct iwl_mvm*) ; 
 int FUNC3 (struct iwl_mvm*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC4(struct iwl_mvm *mvm,
					struct ieee80211_vif *vif)
{
	const struct iwl_ucode_capabilities *capa = &mvm->fw->ucode_capa;
	bool low_latency;

	if (FUNC0(mvm))
		low_latency = FUNC3(mvm, NL80211_BAND_5GHZ);
	else
		low_latency = FUNC2(mvm);

	/* We can only use EBS if:
	 *	1. the feature is supported;
	 *	2. the last EBS was successful;
	 *	3. if only single scan, the single scan EBS API is supported;
	 *	4. it's not a p2p find operation.
	 *	5. we are not in low latency mode,
	 *	   or if fragmented ebs is supported by the FW
	 */
	return ((capa->flags & IWL_UCODE_TLV_FLAGS_EBS_SUPPORT) &&
		mvm->last_ebs_successful && IWL_MVM_ENABLE_EBS &&
		vif->type != NL80211_IFTYPE_P2P_DEVICE &&
		(!low_latency || FUNC1(mvm)));
}