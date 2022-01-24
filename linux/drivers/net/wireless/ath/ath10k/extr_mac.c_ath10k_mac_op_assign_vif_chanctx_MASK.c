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
struct ieee80211_vif {scalar_t__ type; int /*<<< orphan*/  addr; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ath10k* priv; } ;
struct TYPE_6__ {TYPE_1__* chan; } ;
struct ieee80211_chanctx_conf {TYPE_3__ def; } ;
struct ath10k_vif {int is_started; int is_up; int /*<<< orphan*/  vdev_id; } ;
struct TYPE_5__ {scalar_t__ tx_stats_over_pktlog; } ;
struct ath10k {int /*<<< orphan*/  conf_mutex; int /*<<< orphan*/  pktlog_filter; TYPE_2__ hw_params; } ;
struct TYPE_4__ {int /*<<< orphan*/  center_freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_MAC ; 
 int /*<<< orphan*/  ATH10K_PKTLOG_PEER_STATS ; 
 int EBUSY ; 
 scalar_t__ NL80211_IFTYPE_MONITOR ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,char*,struct ieee80211_chanctx_conf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ath10k_vif*) ; 
 int FUNC3 (struct ath10k_vif*) ; 
 int FUNC4 (struct ath10k_vif*) ; 
 scalar_t__ FUNC5 (struct ath10k*) ; 
 int FUNC6 (struct ath10k_vif*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath10k_vif*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath10k*,char*,int,...) ; 
 int FUNC9 (struct ath10k*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC13(struct ieee80211_hw *hw,
				 struct ieee80211_vif *vif,
				 struct ieee80211_chanctx_conf *ctx)
{
	struct ath10k *ar = hw->priv;
	struct ath10k_vif *arvif = (void *)vif->drv_priv;
	int ret;

	FUNC11(&ar->conf_mutex);

	FUNC1(ar, ATH10K_DBG_MAC,
		   "mac chanctx assign ptr %pK vdev_id %i\n",
		   ctx, arvif->vdev_id);

	if (FUNC0(arvif->is_started)) {
		FUNC12(&ar->conf_mutex);
		return -EBUSY;
	}

	ret = FUNC6(arvif, &ctx->def);
	if (ret) {
		FUNC8(ar, "failed to start vdev %i addr %pM on freq %d: %d\n",
			    arvif->vdev_id, vif->addr,
			    ctx->def.chan->center_freq, ret);
		goto err;
	}

	arvif->is_started = true;

	ret = FUNC4(arvif);
	if (ret) {
		FUNC8(ar, "failed to update vdev %i ps: %d\n",
			    arvif->vdev_id, ret);
		goto err_stop;
	}

	if (vif->type == NL80211_IFTYPE_MONITOR) {
		ret = FUNC10(ar, arvif->vdev_id, 0, vif->addr);
		if (ret) {
			FUNC8(ar, "failed to up monitor vdev %i: %d\n",
				    arvif->vdev_id, ret);
			goto err_stop;
		}

		arvif->is_up = true;
	}

	if (FUNC2(arvif)) {
		ret = FUNC3(arvif);
		if (ret)
			FUNC8(ar, "failed to set cts protection for vdev %d: %d\n",
				    arvif->vdev_id, ret);
	}

	if (FUNC5(ar) &&
	    ar->hw_params.tx_stats_over_pktlog) {
		ar->pktlog_filter |= ATH10K_PKTLOG_PEER_STATS;
		ret = FUNC9(ar,
						    ar->pktlog_filter);
		if (ret) {
			FUNC8(ar, "failed to enable pktlog %d\n", ret);
			goto err_stop;
		}
	}

	FUNC12(&ar->conf_mutex);
	return 0;

err_stop:
	FUNC7(arvif);
	arvif->is_started = false;
	FUNC4(arvif);

err:
	FUNC12(&ar->conf_mutex);
	return ret;
}