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
typedef  int /*<<< orphan*/  u8 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct ath9k_htc_priv* priv; } ;
struct ath_common {int /*<<< orphan*/  op_flags; } ;
struct ath9k_htc_priv {int /*<<< orphan*/  mutex; int /*<<< orphan*/  ps_work; int /*<<< orphan*/  beacon_lock; int /*<<< orphan*/  ah; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH_OP_SCANNING ; 
 int /*<<< orphan*/  FUNC0 (struct ath9k_htc_priv*) ; 
 struct ath_common* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct ieee80211_hw *hw,
				    struct ieee80211_vif *vif,
				    const u8 *mac_addr)
{
	struct ath9k_htc_priv *priv = hw->priv;
	struct ath_common *common = FUNC1(priv->ah);

	FUNC3(&priv->mutex);
	FUNC6(&priv->beacon_lock);
	FUNC5(ATH_OP_SCANNING, &common->op_flags);
	FUNC7(&priv->beacon_lock);
	FUNC2(&priv->ps_work);
	FUNC0(priv);
	FUNC4(&priv->mutex);
}