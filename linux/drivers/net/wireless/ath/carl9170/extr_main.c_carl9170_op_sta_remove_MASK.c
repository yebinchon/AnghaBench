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
struct ieee80211_vif {int dummy; } ;
struct TYPE_2__ {scalar_t__ ht_supported; } ;
struct ieee80211_sta {TYPE_1__ ht_cap; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ar9170* priv; } ;
struct carl9170_sta_tid {scalar_t__ state; } ;
struct carl9170_sta_info {int ht_sta; int /*<<< orphan*/ * agg; } ;
struct ar9170 {int /*<<< orphan*/  tx_ampdu_list_lock; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ CARL9170_TID_STATE_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ar9170*) ; 
 struct carl9170_sta_tid* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct ieee80211_hw *hw,
				struct ieee80211_vif *vif,
				struct ieee80211_sta *sta)
{
	struct ar9170 *ar = hw->priv;
	struct carl9170_sta_info *sta_info = (void *) sta->drv_priv;
	unsigned int i;
	bool cleanup = false;

	if (sta->ht_cap.ht_supported) {

		sta_info->ht_sta = false;

		FUNC4();
		for (i = 0; i < FUNC0(sta_info->agg); i++) {
			struct carl9170_sta_tid *tid_info;

			tid_info = FUNC3(sta_info->agg[i]);
			FUNC1(sta_info->agg[i], NULL);

			if (!tid_info)
				continue;

			FUNC6(&ar->tx_ampdu_list_lock);
			if (tid_info->state > CARL9170_TID_STATE_SHUTDOWN)
				tid_info->state = CARL9170_TID_STATE_SHUTDOWN;
			FUNC7(&ar->tx_ampdu_list_lock);
			cleanup = true;
		}
		FUNC5();

		if (cleanup)
			FUNC2(ar);
	}

	return 0;
}