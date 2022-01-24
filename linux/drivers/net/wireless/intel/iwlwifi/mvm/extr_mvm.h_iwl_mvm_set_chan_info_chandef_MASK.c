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
struct iwl_mvm {int dummy; } ;
struct iwl_fw_channel_info {int dummy; } ;
struct cfg80211_chan_def {TYPE_1__* chan; } ;
struct TYPE_2__ {scalar_t__ band; int /*<<< orphan*/  hw_value; } ;

/* Variables and functions */
 scalar_t__ NL80211_BAND_2GHZ ; 
 int /*<<< orphan*/  PHY_BAND_24 ; 
 int /*<<< orphan*/  PHY_BAND_5 ; 
 int /*<<< orphan*/  FUNC0 (struct cfg80211_chan_def*) ; 
 int /*<<< orphan*/  FUNC1 (struct cfg80211_chan_def*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,struct iwl_fw_channel_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC3(struct iwl_mvm *mvm,
			      struct iwl_fw_channel_info *ci,
			      struct cfg80211_chan_def *chandef)
{
	FUNC2(mvm, ci, chandef->chan->hw_value,
			      (chandef->chan->band == NL80211_BAND_2GHZ ?
			       PHY_BAND_24 : PHY_BAND_5),
			       FUNC0(chandef),
			       FUNC1(chandef));
}