#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_6__ {struct ieee80211_channel* chan; } ;
struct ieee80211_conf {int flags; int power_level; TYPE_4__ chandef; } ;
struct ieee80211_hw {struct ieee80211_conf conf; struct ath9k_htc_priv* priv; } ;
struct ieee80211_channel {int hw_value; int /*<<< orphan*/  center_freq; } ;
struct ath_common {int dummy; } ;
struct ath9k_htc_priv {int ps_idle; int ps_enabled; int txpowlimit; int /*<<< orphan*/  mutex; int /*<<< orphan*/  curtxpow; TYPE_1__* ah; int /*<<< orphan*/  ps_work; int /*<<< orphan*/  htc_pm_lock; } ;
struct TYPE_5__ {int /*<<< orphan*/ * channels; scalar_t__ is_monitoring; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH9K_PM_AWAKE ; 
 int /*<<< orphan*/  ATH9K_PM_NETWORK_SLEEP ; 
 int /*<<< orphan*/  CONFIG ; 
 int EINVAL ; 
 int IEEE80211_CONF_CHANGE_CHANNEL ; 
 int IEEE80211_CONF_CHANGE_IDLE ; 
 int IEEE80211_CONF_CHANGE_MONITOR ; 
 int IEEE80211_CONF_CHANGE_POWER ; 
 int IEEE80211_CONF_CHANGE_PS ; 
 int IEEE80211_CONF_IDLE ; 
 int IEEE80211_CONF_MONITOR ; 
 int IEEE80211_CONF_PS ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,TYPE_1__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath9k_htc_priv*) ; 
 scalar_t__ FUNC6 (struct ath9k_htc_priv*,struct ieee80211_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ath9k_htc_priv*,int /*<<< orphan*/ ) ; 
 struct ath_common* FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_common*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_common*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct ieee80211_hw *hw, u32 changed)
{
	struct ath9k_htc_priv *priv = hw->priv;
	struct ath_common *common = FUNC8(priv->ah);
	struct ieee80211_conf *conf = &hw->conf;
	bool chip_reset = false;
	int ret = 0;

	FUNC12(&priv->mutex);
	FUNC4(priv);

	if (changed & IEEE80211_CONF_CHANGE_IDLE) {
		FUNC12(&priv->htc_pm_lock);

		priv->ps_idle = !!(conf->flags & IEEE80211_CONF_IDLE);
		if (!priv->ps_idle)
			chip_reset = true;

		FUNC13(&priv->htc_pm_lock);
	}

	/*
	 * Monitor interface should be added before
	 * IEEE80211_CONF_CHANGE_CHANNEL is handled.
	 */
	if (changed & IEEE80211_CONF_CHANGE_MONITOR) {
		if ((conf->flags & IEEE80211_CONF_MONITOR) &&
		    !priv->ah->is_monitoring)
			FUNC2(priv);
		else if (priv->ah->is_monitoring)
			FUNC5(priv);
	}

	if ((changed & IEEE80211_CONF_CHANGE_CHANNEL) || chip_reset) {
		struct ieee80211_channel *curchan = hw->conf.chandef.chan;
		int pos = curchan->hw_value;

		FUNC9(common, CONFIG, "Set channel: %d MHz\n",
			curchan->center_freq);

		FUNC0(hw, priv->ah, &hw->conf.chandef);
		if (FUNC6(priv, hw, &priv->ah->channels[pos]) < 0) {
			FUNC10(common, "Unable to set channel\n");
			ret = -EINVAL;
			goto out;
		}

	}

	if (changed & IEEE80211_CONF_CHANGE_PS) {
		if (conf->flags & IEEE80211_CONF_PS) {
			FUNC7(priv, ATH9K_PM_NETWORK_SLEEP);
			priv->ps_enabled = true;
		} else {
			priv->ps_enabled = false;
			FUNC11(&priv->ps_work);
			FUNC7(priv, ATH9K_PM_AWAKE);
		}
	}

	if (changed & IEEE80211_CONF_CHANGE_POWER) {
		priv->txpowlimit = 2 * conf->power_level;
		FUNC1(priv->ah, priv->curtxpow,
				       priv->txpowlimit, &priv->curtxpow);
	}

out:
	FUNC3(priv);
	FUNC13(&priv->mutex);
	return ret;
}