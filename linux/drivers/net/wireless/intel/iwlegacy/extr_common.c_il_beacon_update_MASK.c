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
struct sk_buff {scalar_t__ data; } ;
struct il_priv {TYPE_3__* ops; int /*<<< orphan*/  lock; int /*<<< orphan*/  timestamp; struct sk_buff* beacon_skb; int /*<<< orphan*/  beacon_enabled; int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  timestamp; } ;
struct TYPE_5__ {TYPE_1__ beacon; } ;
struct ieee80211_mgmt {TYPE_2__ u; } ;
struct ieee80211_hw {struct il_priv* priv; } ;
typedef  int /*<<< orphan*/  __le64 ;
struct TYPE_6__ {int /*<<< orphan*/  (* post_associate ) (struct il_priv*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (struct ieee80211_hw*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC4 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct il_priv*) ; 

__attribute__((used)) static void
FUNC10(struct ieee80211_hw *hw, struct ieee80211_vif *vif)
{
	struct il_priv *il = hw->priv;
	unsigned long flags;
	__le64 timestamp;
	struct sk_buff *skb = FUNC3(hw, vif);

	if (!skb)
		return;

	FUNC0("enter\n");

	FUNC6(&il->mutex);

	if (!il->beacon_enabled) {
		FUNC1("update beacon with no beaconing enabled\n");
		FUNC2(skb);
		return;
	}

	FUNC7(&il->lock, flags);

	if (il->beacon_skb)
		FUNC2(il->beacon_skb);

	il->beacon_skb = skb;

	timestamp = ((struct ieee80211_mgmt *)skb->data)->u.beacon.timestamp;
	il->timestamp = FUNC5(timestamp);

	FUNC0("leave\n");
	FUNC8(&il->lock, flags);

	if (!FUNC4(il)) {
		FUNC0("leave - RF not ready\n");
		return;
	}

	il->ops->post_associate(il);
}