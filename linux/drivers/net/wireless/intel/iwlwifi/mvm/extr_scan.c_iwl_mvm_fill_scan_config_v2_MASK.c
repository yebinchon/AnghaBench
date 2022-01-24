#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct iwl_scan_config_v2 {int /*<<< orphan*/  channel_array; int /*<<< orphan*/  channel_flags; int /*<<< orphan*/  bcast_sta_id; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  dwell; void** suspend_time; void** out_of_channel_time; int /*<<< orphan*/  legacy_rates; void* rx_chains; void* tx_chains; void* flags; } ;
struct TYPE_5__ {int /*<<< orphan*/  sta_id; } ;
struct iwl_mvm {TYPE_2__ aux_sta; TYPE_1__* addresses; } ;
typedef  enum iwl_mvm_scan_type { ____Placeholder_iwl_mvm_scan_type } iwl_mvm_scan_type ;
struct TYPE_6__ {int /*<<< orphan*/  suspend_time; int /*<<< orphan*/  max_out_time; } ;
struct TYPE_4__ {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  NL80211_BAND_2GHZ ; 
 int /*<<< orphan*/  NL80211_BAND_5GHZ ; 
 size_t SCAN_HB_LMAC_IDX ; 
 size_t SCAN_LB_LMAC_IDX ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct iwl_mvm*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct iwl_mvm*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_mvm*) ; 
 scalar_t__ FUNC6 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* scan_timing ; 

__attribute__((used)) static void FUNC10(struct iwl_mvm *mvm, void *config,
					u32 flags, u8 channel_flags,
					u32 max_channels)
{
	struct iwl_scan_config_v2 *cfg = config;

	cfg->flags = FUNC0(flags);
	cfg->tx_chains = FUNC0(FUNC5(mvm));
	cfg->rx_chains = FUNC0(FUNC8(mvm));
	cfg->legacy_rates = FUNC7(mvm);

	if (FUNC6(mvm)) {
		enum iwl_mvm_scan_type lb_type, hb_type;

		lb_type = FUNC4(mvm, NULL,
						     NL80211_BAND_2GHZ);
		hb_type = FUNC4(mvm, NULL,
						     NL80211_BAND_5GHZ);

		cfg->out_of_channel_time[SCAN_LB_LMAC_IDX] =
			FUNC0(scan_timing[lb_type].max_out_time);
		cfg->suspend_time[SCAN_LB_LMAC_IDX] =
			FUNC0(scan_timing[lb_type].suspend_time);

		cfg->out_of_channel_time[SCAN_HB_LMAC_IDX] =
			FUNC0(scan_timing[hb_type].max_out_time);
		cfg->suspend_time[SCAN_HB_LMAC_IDX] =
			FUNC0(scan_timing[hb_type].suspend_time);
	} else {
		enum iwl_mvm_scan_type type =
			FUNC3(mvm, NULL);

		cfg->out_of_channel_time[SCAN_LB_LMAC_IDX] =
			FUNC0(scan_timing[type].max_out_time);
		cfg->suspend_time[SCAN_LB_LMAC_IDX] =
			FUNC0(scan_timing[type].suspend_time);
	}

	FUNC2(mvm, &cfg->dwell);

	FUNC9(&cfg->mac_addr, &mvm->addresses[0].addr, ETH_ALEN);

	cfg->bcast_sta_id = mvm->aux_sta.sta_id;
	cfg->channel_flags = channel_flags;

	FUNC1(mvm, cfg->channel_array, max_channels);
}