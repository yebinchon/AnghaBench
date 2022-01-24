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
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {struct ath10k* priv; } ;
struct dentry {int dummy; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ath10k*) ; 
 scalar_t__ FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,struct dentry*,struct ieee80211_sta*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fops_addba ; 
 int /*<<< orphan*/  fops_addba_resp ; 
 int /*<<< orphan*/  fops_aggr_mode ; 
 int /*<<< orphan*/  fops_delba ; 
 int /*<<< orphan*/  fops_peer_debug_trigger ; 
 int /*<<< orphan*/  fops_peer_ps_state ; 
 int /*<<< orphan*/  fops_tid_stats_dump ; 
 int /*<<< orphan*/  fops_tx_stats ; 

void FUNC3(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
			    struct ieee80211_sta *sta, struct dentry *dir)
{
	struct ath10k *ar = hw->priv;

	FUNC2("aggr_mode", 0644, dir, sta, &fops_aggr_mode);
	FUNC2("addba", 0200, dir, sta, &fops_addba);
	FUNC2("addba_resp", 0200, dir, sta, &fops_addba_resp);
	FUNC2("delba", 0200, dir, sta, &fops_delba);
	FUNC2("peer_debug_trigger", 0600, dir, sta,
			    &fops_peer_debug_trigger);
	FUNC2("dump_tid_stats", 0400, dir, sta,
			    &fops_tid_stats_dump);

	if (FUNC1(ar) &&
	    FUNC0(ar))
		FUNC2("tx_stats", 0400, dir, sta,
				    &fops_tx_stats);
	FUNC2("peer_ps_state", 0400, dir, sta,
			    &fops_peer_ps_state);
}