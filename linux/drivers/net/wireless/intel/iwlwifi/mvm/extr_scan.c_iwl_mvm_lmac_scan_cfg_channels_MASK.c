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
typedef  int u32 ;
struct iwl_scan_req_lmac {int /*<<< orphan*/  data; } ;
struct iwl_scan_channel_cfg_lmac {int /*<<< orphan*/  flags; scalar_t__ iter_interval; void* iter_count; void* channel_num; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_channel {int hw_value; } ;

/* Variables and functions */
 int IWL_UNIFIED_SCAN_CHANNEL_PARTIAL ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(struct iwl_mvm *mvm,
			       struct ieee80211_channel **channels,
			       int n_channels, u32 ssid_bitmap,
			       struct iwl_scan_req_lmac *cmd)
{
	struct iwl_scan_channel_cfg_lmac *channel_cfg = (void *)&cmd->data;
	int i;

	for (i = 0; i < n_channels; i++) {
		channel_cfg[i].channel_num =
			FUNC0(channels[i]->hw_value);
		channel_cfg[i].iter_count = FUNC0(1);
		channel_cfg[i].iter_interval = 0;
		channel_cfg[i].flags =
			FUNC1(IWL_UNIFIED_SCAN_CHANNEL_PARTIAL |
				    ssid_bitmap);
	}
}