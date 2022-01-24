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
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct napi_struct {int dummy; } ;
struct mt76_dev {int /*<<< orphan*/  rx_lock; int /*<<< orphan*/  hw; } ;
struct ieee80211_sta {int dummy; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ieee80211_sta*,struct sk_buff*,struct napi_struct*) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 struct ieee80211_sta* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct mt76_dev *dev, struct sk_buff_head *frames,
		      struct napi_struct *napi)
{
	struct ieee80211_sta *sta;
	struct sk_buff *skb;

	FUNC5(&dev->rx_lock);
	while ((skb = FUNC0(frames)) != NULL) {
		if (FUNC3(skb)) {
			FUNC1(skb);
			continue;
		}

		sta = FUNC4(skb);
		FUNC2(dev->hw, sta, skb, napi);
	}
	FUNC6(&dev->rx_lock);
}