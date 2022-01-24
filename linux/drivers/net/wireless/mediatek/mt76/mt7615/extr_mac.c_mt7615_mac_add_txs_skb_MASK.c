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
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct mt76_dev {int dummy; } ;
struct mt7615_sta {int /*<<< orphan*/  wcid; } ;
struct mt7615_dev {struct mt76_dev mt76; } ;
struct TYPE_4__ {TYPE_1__* rates; } ;
struct ieee80211_tx_info {TYPE_2__ status; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_3__ {int idx; } ;

/* Variables and functions */
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int MT_PACKET_ID_FIRST ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_tx_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct mt7615_dev*,struct mt7615_sta*,struct ieee80211_tx_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mt76_dev*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct mt76_dev*,struct sk_buff*,struct sk_buff_head*) ; 
 struct sk_buff* FUNC5 (struct mt76_dev*,int /*<<< orphan*/ *,int,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct mt76_dev*,struct sk_buff_head*) ; 

__attribute__((used)) static bool FUNC7(struct mt7615_dev *dev,
				   struct mt7615_sta *sta, int pid,
				   __le32 *txs_data)
{
	struct mt76_dev *mdev = &dev->mt76;
	struct sk_buff_head list;
	struct sk_buff *skb;

	if (pid < MT_PACKET_ID_FIRST)
		return false;

	FUNC3(mdev, &list);
	skb = FUNC5(mdev, &sta->wcid, pid, &list);
	if (skb) {
		struct ieee80211_tx_info *info = FUNC0(skb);

		if (!FUNC2(dev, sta, info, txs_data)) {
			FUNC1(info);
			info->status.rates[0].idx = -1;
		}

		FUNC4(mdev, skb, &list);
	}
	FUNC6(mdev, &list);

	return !!skb;
}