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
struct TYPE_4__ {TYPE_2__* sbands; } ;
struct ath10k {int /*<<< orphan*/  hw; TYPE_1__ mac; TYPE_3__* dfs_detector; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* exit ) (TYPE_3__*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  channels; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_ATH10K_DFS_CERTIFIED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t NL80211_BAND_2GHZ ; 
 size_t NL80211_BAND_5GHZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

void FUNC5(struct ath10k *ar)
{
	FUNC2(ar->hw);

	if (FUNC0(CONFIG_ATH10K_DFS_CERTIFIED) && ar->dfs_detector)
		ar->dfs_detector->exit(ar->dfs_detector);

	FUNC3(ar->mac.sbands[NL80211_BAND_2GHZ].channels);
	FUNC3(ar->mac.sbands[NL80211_BAND_5GHZ].channels);

	FUNC1(ar->hw, NULL);
}