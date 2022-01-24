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
struct ieee80211_vif {scalar_t__ type; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ath10k* priv; } ;
struct ieee80211_chanctx_conf {int dummy; } ;
struct ath10k_vif {int is_started; int is_up; int /*<<< orphan*/  vdev_id; } ;
struct ath10k {int /*<<< orphan*/  conf_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_MAC ; 
 scalar_t__ NL80211_IFTYPE_MONITOR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,char*,struct ieee80211_chanctx_conf*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ath10k_vif*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct ath10k*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct ieee80211_hw *hw,
				   struct ieee80211_vif *vif,
				   struct ieee80211_chanctx_conf *ctx)
{
	struct ath10k *ar = hw->priv;
	struct ath10k_vif *arvif = (void *)vif->drv_priv;
	int ret;

	FUNC5(&ar->conf_mutex);

	FUNC1(ar, ATH10K_DBG_MAC,
		   "mac chanctx unassign ptr %pK vdev_id %i\n",
		   ctx, arvif->vdev_id);

	FUNC0(!arvif->is_started);

	if (vif->type == NL80211_IFTYPE_MONITOR) {
		FUNC0(!arvif->is_up);

		ret = FUNC4(ar, arvif->vdev_id);
		if (ret)
			FUNC3(ar, "failed to down monitor vdev %i: %d\n",
				    arvif->vdev_id, ret);

		arvif->is_up = false;
	}

	ret = FUNC2(arvif);
	if (ret)
		FUNC3(ar, "failed to stop vdev %i: %d\n",
			    arvif->vdev_id, ret);

	arvif->is_started = false;

	FUNC6(&ar->conf_mutex);
}