#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct wmi_wmm_params_arg {int txop; int /*<<< orphan*/  aifs; int /*<<< orphan*/  cwmax; int /*<<< orphan*/  cwmin; } ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_tx_queue_params {int txop; int /*<<< orphan*/  uapsd; int /*<<< orphan*/  aifs; int /*<<< orphan*/  cw_max; int /*<<< orphan*/  cw_min; } ;
struct ieee80211_hw {struct ath10k* priv; } ;
struct TYPE_7__ {struct wmi_wmm_params_arg ac_bk; struct wmi_wmm_params_arg ac_be; struct wmi_wmm_params_arg ac_vi; struct wmi_wmm_params_arg ac_vo; } ;
struct ath10k_vif {TYPE_3__ wmm_params; int /*<<< orphan*/  vdev_id; } ;
struct TYPE_6__ {TYPE_1__* ops; } ;
struct ath10k {int /*<<< orphan*/  conf_mutex; TYPE_2__ wmi; } ;
struct TYPE_5__ {scalar_t__ gen_vdev_wmm_conf; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IEEE80211_AC_BE 131 
#define  IEEE80211_AC_BK 130 
#define  IEEE80211_AC_VI 129 
#define  IEEE80211_AC_VO 128 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct ath10k*,struct ieee80211_vif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,int,...) ; 
 int FUNC3 (struct ath10k*,TYPE_3__*) ; 
 int FUNC4 (struct ath10k*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct ieee80211_hw *hw,
			  struct ieee80211_vif *vif, u16 ac,
			  const struct ieee80211_tx_queue_params *params)
{
	struct ath10k *ar = hw->priv;
	struct ath10k_vif *arvif = (void *)vif->drv_priv;
	struct wmi_wmm_params_arg *p = NULL;
	int ret;

	FUNC5(&ar->conf_mutex);

	switch (ac) {
	case IEEE80211_AC_VO:
		p = &arvif->wmm_params.ac_vo;
		break;
	case IEEE80211_AC_VI:
		p = &arvif->wmm_params.ac_vi;
		break;
	case IEEE80211_AC_BE:
		p = &arvif->wmm_params.ac_be;
		break;
	case IEEE80211_AC_BK:
		p = &arvif->wmm_params.ac_bk;
		break;
	}

	if (FUNC0(!p)) {
		ret = -EINVAL;
		goto exit;
	}

	p->cwmin = params->cw_min;
	p->cwmax = params->cw_max;
	p->aifs = params->aifs;

	/*
	 * The channel time duration programmed in the HW is in absolute
	 * microseconds, while mac80211 gives the txop in units of
	 * 32 microseconds.
	 */
	p->txop = params->txop * 32;

	if (ar->wmi.ops->gen_vdev_wmm_conf) {
		ret = FUNC4(ar, arvif->vdev_id,
					       &arvif->wmm_params);
		if (ret) {
			FUNC2(ar, "failed to set vdev wmm params on vdev %i: %d\n",
				    arvif->vdev_id, ret);
			goto exit;
		}
	} else {
		/* This won't work well with multi-interface cases but it's
		 * better than nothing.
		 */
		ret = FUNC3(ar, &arvif->wmm_params);
		if (ret) {
			FUNC2(ar, "failed to set wmm params: %d\n", ret);
			goto exit;
		}
	}

	ret = FUNC1(ar, vif, ac, params->uapsd);
	if (ret)
		FUNC2(ar, "failed to set sta uapsd: %d\n", ret);

exit:
	FUNC6(&ar->conf_mutex);
	return ret;
}