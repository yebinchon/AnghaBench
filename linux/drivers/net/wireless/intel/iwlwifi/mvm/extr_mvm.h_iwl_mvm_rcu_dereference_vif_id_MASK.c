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
typedef  size_t u8 ;
struct iwl_mvm {int /*<<< orphan*/  mutex; int /*<<< orphan*/ * vif_id_to_mac; } ;
struct ieee80211_vif {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ieee80211_vif* FUNC3 (int /*<<< orphan*/ ) ; 
 struct ieee80211_vif* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct ieee80211_vif *
FUNC5(struct iwl_mvm *mvm, u8 vif_id, bool rcu)
{
	if (FUNC1(vif_id >= FUNC0(mvm->vif_id_to_mac)))
		return NULL;

	if (rcu)
		return FUNC3(mvm->vif_id_to_mac[vif_id]);

	return FUNC4(mvm->vif_id_to_mac[vif_id],
					 FUNC2(&mvm->mutex));
}