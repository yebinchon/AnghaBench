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
typedef  int u8 ;
struct iwl_mvm {int dummy; } ;
struct TYPE_2__ {int rtt_avg; int burst_index; int num_ftmr_successes; int rssi_avg; int rssi_spread; int rtt_variance; int rtt_spread; } ;
struct cfg80211_pmsr_result {int status; int addr; int host_time; TYPE_1__ ftm; } ;
typedef  int s64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int) ; 
 int FUNC1 (int,int) ; 

__attribute__((used)) static void FUNC2(struct iwl_mvm *mvm, u8 index,
				     struct cfg80211_pmsr_result *res)
{
	s64 rtt_avg = FUNC1(res->ftm.rtt_avg * 100, 6666);

	FUNC0(mvm, "entry %d\n", index);
	FUNC0(mvm, "\tstatus: %d\n", res->status);
	FUNC0(mvm, "\tBSSID: %pM\n", res->addr);
	FUNC0(mvm, "\thost time: %llu\n", res->host_time);
	FUNC0(mvm, "\tburst index: %hhu\n", res->ftm.burst_index);
	FUNC0(mvm, "\tsuccess num: %u\n", res->ftm.num_ftmr_successes);
	FUNC0(mvm, "\trssi: %d\n", res->ftm.rssi_avg);
	FUNC0(mvm, "\trssi spread: %hhu\n", res->ftm.rssi_spread);
	FUNC0(mvm, "\trtt: %lld\n", res->ftm.rtt_avg);
	FUNC0(mvm, "\trtt var: %llu\n", res->ftm.rtt_variance);
	FUNC0(mvm, "\trtt spread: %llu\n", res->ftm.rtt_spread);
	FUNC0(mvm, "\tdistance: %lld\n", rtt_avg);
}