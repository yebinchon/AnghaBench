#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct mt76x02_vif {size_t idx; } ;
struct TYPE_3__ {int beacon_mask; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct TYPE_4__ {struct ieee80211_vif* vif; } ;
struct ieee80211_tx_info {int /*<<< orphan*/  flags; TYPE_2__ control; } ;
struct beacon_bc_data {struct sk_buff** tail; int /*<<< orphan*/  q; struct mt76x02_dev* dev; } ;

/* Variables and functions */
 int FUNC0 (size_t) ; 
 struct ieee80211_tx_info* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  IEEE80211_TX_CTL_ASSIGN_SEQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC4 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 

__attribute__((used)) static void
FUNC6(void *priv, u8 *mac, struct ieee80211_vif *vif)
{
	struct beacon_bc_data *data = priv;
	struct mt76x02_dev *dev = data->dev;
	struct mt76x02_vif *mvif = (struct mt76x02_vif *)vif->drv_priv;
	struct ieee80211_tx_info *info;
	struct sk_buff *skb;

	if (!(dev->mt76.beacon_mask & FUNC0(mvif->idx)))
		return;

	skb = FUNC3(FUNC4(dev), vif);
	if (!skb)
		return;

	info = FUNC1(skb);
	info->control.vif = vif;
	info->flags |= IEEE80211_TX_CTL_ASSIGN_SEQ;
	FUNC5(skb, true);
	FUNC2(&data->q, skb);
	data->tail[mvif->idx] = skb;
}