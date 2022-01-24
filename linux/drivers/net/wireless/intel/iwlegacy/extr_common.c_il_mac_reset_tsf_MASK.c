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
struct TYPE_2__ {int /*<<< orphan*/  filter_flags; } ;
struct il_priv {int /*<<< orphan*/  mutex; TYPE_1__ staging; int /*<<< orphan*/  lock; scalar_t__ timestamp; int /*<<< orphan*/ * beacon_skb; int /*<<< orphan*/  current_ht_config; } ;
struct il_ht_config {int dummy; } ;
struct ieee80211_vif {int /*<<< orphan*/  addr; int /*<<< orphan*/  type; } ;
struct ieee80211_hw {struct il_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  RXON_FILTER_ASSOC_MSK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct il_priv*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC11(struct ieee80211_hw *hw, struct ieee80211_vif *vif)
{
	struct il_priv *il = hw->priv;
	unsigned long flags;

	FUNC7(&il->mutex);
	FUNC0("enter: type %d, addr %pM\n", vif->type, vif->addr);

	FUNC9(&il->lock, flags);

	FUNC6(&il->current_ht_config, 0, sizeof(struct il_ht_config));

	/* new association get rid of ibss beacon skb */
	if (il->beacon_skb)
		FUNC1(il->beacon_skb);
	il->beacon_skb = NULL;
	il->timestamp = 0;

	FUNC10(&il->lock, flags);

	FUNC4(il, 100);
	if (!FUNC3(il)) {
		FUNC0("leave - not ready\n");
		FUNC8(&il->mutex);
		return;
	}

	/* we are restarting association process */
	il->staging.filter_flags &= ~RXON_FILTER_ASSOC_MSK;
	FUNC2(il);

	FUNC5(il);

	FUNC0("leave\n");
	FUNC8(&il->mutex);
}