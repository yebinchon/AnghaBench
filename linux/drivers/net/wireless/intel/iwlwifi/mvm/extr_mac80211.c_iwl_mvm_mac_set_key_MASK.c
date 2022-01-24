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
struct iwl_mvm {int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_key_conf {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum set_key_cmd { ____Placeholder_set_key_cmd } set_key_cmd ;

/* Variables and functions */
 struct iwl_mvm* FUNC0 (struct ieee80211_hw*) ; 
 int FUNC1 (struct ieee80211_hw*,int,struct ieee80211_vif*,struct ieee80211_sta*,struct ieee80211_key_conf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct ieee80211_hw *hw,
			       enum set_key_cmd cmd,
			       struct ieee80211_vif *vif,
			       struct ieee80211_sta *sta,
			       struct ieee80211_key_conf *key)
{
	struct iwl_mvm *mvm = FUNC0(hw);
	int ret;

	FUNC2(&mvm->mutex);
	ret = FUNC1(hw, cmd, vif, sta, key);
	FUNC3(&mvm->mutex);

	return ret;
}