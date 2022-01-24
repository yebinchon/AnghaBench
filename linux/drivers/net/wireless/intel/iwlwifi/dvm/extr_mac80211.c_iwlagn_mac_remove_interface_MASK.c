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
struct iwl_rxon_context {struct ieee80211_vif* vif; } ;
struct iwl_priv {int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*) ; 
 struct iwl_priv* FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct iwl_rxon_context* FUNC3 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_priv*,struct ieee80211_vif*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct ieee80211_hw *hw,
			      struct ieee80211_vif *vif)
{
	struct iwl_priv *priv = FUNC1(hw);
	struct iwl_rxon_context *ctx = FUNC3(vif);

	FUNC0(priv, "enter\n");

	FUNC5(&priv->mutex);

	FUNC2(ctx->vif != vif);
	ctx->vif = NULL;

	FUNC4(priv, vif, false);

	FUNC6(&priv->mutex);

	FUNC0(priv, "leave\n");

}