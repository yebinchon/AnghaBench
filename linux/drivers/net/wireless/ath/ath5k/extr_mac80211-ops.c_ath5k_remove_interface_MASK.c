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
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ath5k_hw* priv; } ;
struct ath5k_vif {scalar_t__ opmode; TYPE_1__* bbuf; } ;
struct ath5k_hw {int /*<<< orphan*/  lock; int /*<<< orphan*/  num_mesh_vifs; int /*<<< orphan*/  num_adhoc_vifs; int /*<<< orphan*/  num_ap_vifs; struct ieee80211_vif** bslot; int /*<<< orphan*/  bcbuf; int /*<<< orphan*/  nvifs; } ;
struct TYPE_2__ {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 unsigned int ATH_BCBUF ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_MESH_POINT ; 
 int /*<<< orphan*/  FUNC0 (struct ath5k_hw*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath5k_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct ieee80211_hw *hw,
		       struct ieee80211_vif *vif)
{
	struct ath5k_hw *ah = hw->priv;
	struct ath5k_vif *avf = (void *)vif->drv_priv;
	unsigned int i;

	FUNC3(&ah->lock);
	ah->nvifs--;

	if (avf->bbuf) {
		FUNC0(ah, avf->bbuf);
		FUNC2(&avf->bbuf->list, &ah->bcbuf);
		for (i = 0; i < ATH_BCBUF; i++) {
			if (ah->bslot[i] == vif) {
				ah->bslot[i] = NULL;
				break;
			}
		}
		avf->bbuf = NULL;
	}
	if (avf->opmode == NL80211_IFTYPE_AP)
		ah->num_ap_vifs--;
	else if (avf->opmode == NL80211_IFTYPE_ADHOC)
		ah->num_adhoc_vifs--;
	else if (avf->opmode == NL80211_IFTYPE_MESH_POINT)
		ah->num_mesh_vifs--;

	FUNC1(ah, NULL);
	FUNC4(&ah->lock);
}