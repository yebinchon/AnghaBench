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
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ath9k_htc_priv* priv; } ;
struct ath9k_htc_sta {struct ath9k_htc_priv* htc_priv; int /*<<< orphan*/  rc_update_work; } ;
struct ath9k_htc_priv {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ath9k_htc_priv*,struct ieee80211_vif*,struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath9k_htc_priv*,struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  ath9k_htc_sta_rc_update_work ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct ieee80211_hw *hw,
			     struct ieee80211_vif *vif,
			     struct ieee80211_sta *sta)
{
	struct ath9k_htc_priv *priv = hw->priv;
	struct ath9k_htc_sta *ista = (struct ath9k_htc_sta *) sta->drv_priv;
	int ret;

	FUNC5(&priv->mutex);
	FUNC4(priv);
	ret = FUNC1(priv, vif, sta);
	if (!ret) {
		FUNC0(&ista->rc_update_work, ath9k_htc_sta_rc_update_work);
		ista->htc_priv = priv;
		FUNC2(priv, sta);
	}
	FUNC3(priv);
	FUNC6(&priv->mutex);

	return ret;
}