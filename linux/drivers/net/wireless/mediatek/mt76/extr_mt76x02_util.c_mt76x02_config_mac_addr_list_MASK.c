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
typedef  int u8 ;
struct wiphy {int n_addresses; TYPE_2__* addresses; } ;
struct TYPE_3__ {int /*<<< orphan*/  macaddr; } ;
struct mt76x02_dev {TYPE_2__* macaddr_list; TYPE_1__ mt76; } ;
struct ieee80211_hw {struct wiphy* wiphy; } ;
struct TYPE_4__ {int* addr; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ieee80211_hw* FUNC3 (struct mt76x02_dev*) ; 

void FUNC4(struct mt76x02_dev *dev)
{
	struct ieee80211_hw *hw = FUNC3(dev);
	struct wiphy *wiphy = hw->wiphy;
	int i;

	for (i = 0; i < FUNC0(dev->macaddr_list); i++) {
		u8 *addr = dev->macaddr_list[i].addr;

		FUNC2(addr, dev->mt76.macaddr, ETH_ALEN);

		if (!i)
			continue;

		addr[0] |= FUNC1(1);
		addr[0] ^= ((i - 1) << 2);
	}
	wiphy->addresses = dev->macaddr_list;
	wiphy->n_addresses = FUNC0(dev->macaddr_list);
}