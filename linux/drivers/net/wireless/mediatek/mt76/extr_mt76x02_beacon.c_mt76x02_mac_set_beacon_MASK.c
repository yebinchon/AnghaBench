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
typedef  int u8 ;
struct sk_buff {int dummy; } ;
struct mt76x02_dev {int beacon_data_mask; struct sk_buff** beacons; } ;

/* Variables and functions */
 int FUNC0 (struct sk_buff**) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  MT_MAC_BSSID_DW1 ; 
 int /*<<< orphan*/  MT_MAC_BSSID_DW1_MBEACON_N ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct mt76x02_dev *dev, u8 vif_idx,
			   struct sk_buff *skb)
{
	bool force_update = false;
	int bcn_idx = 0;
	int i;

	for (i = 0; i < FUNC0(dev->beacons); i++) {
		if (vif_idx == i) {
			force_update = !!dev->beacons[i] ^ !!skb;

			if (dev->beacons[i])
				FUNC3(dev->beacons[i]);

			dev->beacons[i] = skb;
			FUNC2(dev, bcn_idx, skb);
		} else if (force_update && dev->beacons[i]) {
			FUNC2(dev, bcn_idx,
						 dev->beacons[i]);
		}

		bcn_idx += !!dev->beacons[i];
	}

	for (i = bcn_idx; i < FUNC0(dev->beacons); i++) {
		if (!(dev->beacon_data_mask & FUNC1(i)))
			break;

		FUNC2(dev, i, NULL);
	}

	FUNC4(dev, MT_MAC_BSSID_DW1, MT_MAC_BSSID_DW1_MBEACON_N,
		       bcn_idx - 1);
	return 0;
}