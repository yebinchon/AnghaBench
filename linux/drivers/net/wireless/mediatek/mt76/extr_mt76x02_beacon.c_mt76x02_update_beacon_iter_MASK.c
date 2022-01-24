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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct mt76x02_vif {int /*<<< orphan*/  idx; } ;
struct TYPE_2__ {int beacon_mask; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mt76x02_dev*,int /*<<< orphan*/ ,struct sk_buff*) ; 

void
FUNC4(void *priv, u8 *mac, struct ieee80211_vif *vif)
{
	struct mt76x02_dev *dev = (struct mt76x02_dev *)priv;
	struct mt76x02_vif *mvif = (struct mt76x02_vif *)vif->drv_priv;
	struct sk_buff *skb = NULL;

	if (!(dev->mt76.beacon_mask & FUNC0(mvif->idx)))
		return;

	skb = FUNC1(FUNC2(dev), vif);
	if (!skb)
		return;

	FUNC3(dev, mvif->idx, skb);
}