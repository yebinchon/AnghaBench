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
struct iwl_tof_range_req_ap_entry {int /*<<< orphan*/  initiator_ap_flags; int /*<<< orphan*/  ftmr_max_retries; int /*<<< orphan*/  num_of_bursts; int /*<<< orphan*/  samples_per_burst; int /*<<< orphan*/  burst_period; int /*<<< orphan*/  bssid; int /*<<< orphan*/  ctrl_ch_position; int /*<<< orphan*/  bandwidth; int /*<<< orphan*/  channel_num; } ;
struct iwl_mvm {int dummy; } ;
struct TYPE_2__ {scalar_t__ request_civicloc; scalar_t__ request_lci; scalar_t__ asap; int /*<<< orphan*/  ftmr_retries; int /*<<< orphan*/  num_bursts_exp; int /*<<< orphan*/  ftms_per_burst; int /*<<< orphan*/  burst_period; } ;
struct cfg80211_pmsr_request_peer {TYPE_1__ ftm; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALGO_FFT ; 
 int /*<<< orphan*/  ALGO_LR ; 
 int /*<<< orphan*/  ASAP ; 
 int /*<<< orphan*/  CIVIC_REQUEST ; 
 int /*<<< orphan*/  DYN_ACK ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ IWL_MVM_FTM_INITIATOR_ALGO ; 
 scalar_t__ IWL_MVM_FTM_INITIATOR_DYNACK ; 
 scalar_t__ IWL_TOF_ALGO_TYPE_FFT ; 
 scalar_t__ IWL_TOF_ALGO_TYPE_LINEAR_REG ; 
 int /*<<< orphan*/  LCI_REQUEST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct iwl_mvm*,struct cfg80211_pmsr_request_peer*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct iwl_mvm *mvm,
				  struct cfg80211_pmsr_request_peer *peer,
				  struct iwl_tof_range_req_ap_entry *target)
{
	int ret;

	ret = FUNC3(mvm, peer, &target->channel_num,
					 &target->bandwidth,
					 &target->ctrl_ch_position);
	if (ret)
		return ret;

	FUNC4(target->bssid, peer->addr, ETH_ALEN);
	target->burst_period =
		FUNC1(peer->ftm.burst_period);
	target->samples_per_burst = peer->ftm.ftms_per_burst;
	target->num_of_bursts = peer->ftm.num_bursts_exp;
	target->ftmr_max_retries = peer->ftm.ftmr_retries;
	target->initiator_ap_flags = FUNC2(0);

	if (peer->ftm.asap)
		FUNC0(ASAP);

	if (peer->ftm.request_lci)
		FUNC0(LCI_REQUEST);

	if (peer->ftm.request_civicloc)
		FUNC0(CIVIC_REQUEST);

	if (IWL_MVM_FTM_INITIATOR_DYNACK)
		FUNC0(DYN_ACK);

	if (IWL_MVM_FTM_INITIATOR_ALGO == IWL_TOF_ALGO_TYPE_LINEAR_REG)
		FUNC0(ALGO_LR);
	else if (IWL_MVM_FTM_INITIATOR_ALGO == IWL_TOF_ALGO_TYPE_FFT)
		FUNC0(ALGO_FFT);

	return 0;
}