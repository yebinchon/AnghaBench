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
typedef  int /*<<< orphan*/  u64 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct ath9k_htc_priv* priv; } ;
struct ath9k_htc_priv {int /*<<< orphan*/  mutex; int /*<<< orphan*/  ah; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ieee80211_hw *hw,
			      struct ieee80211_vif *vif, u64 tsf)
{
	struct ath9k_htc_priv *priv = hw->priv;

	FUNC3(&priv->mutex);
	FUNC1(priv);
	FUNC2(priv->ah, tsf);
	FUNC0(priv);
	FUNC4(&priv->mutex);
}