
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wiphy {int n_addresses; TYPE_2__* addresses; } ;
struct TYPE_3__ {int macaddr; } ;
struct mt76x02_dev {TYPE_2__* macaddr_list; TYPE_1__ mt76; } ;
struct ieee80211_hw {struct wiphy* wiphy; } ;
struct TYPE_4__ {int* addr; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int BIT (int) ;
 int ETH_ALEN ;
 int memcpy (int*,int ,int ) ;
 struct ieee80211_hw* mt76_hw (struct mt76x02_dev*) ;

void mt76x02_config_mac_addr_list(struct mt76x02_dev *dev)
{
 struct ieee80211_hw *hw = mt76_hw(dev);
 struct wiphy *wiphy = hw->wiphy;
 int i;

 for (i = 0; i < ARRAY_SIZE(dev->macaddr_list); i++) {
  u8 *addr = dev->macaddr_list[i].addr;

  memcpy(addr, dev->mt76.macaddr, ETH_ALEN);

  if (!i)
   continue;

  addr[0] |= BIT(1);
  addr[0] ^= ((i - 1) << 2);
 }
 wiphy->addresses = dev->macaddr_list;
 wiphy->n_addresses = ARRAY_SIZE(dev->macaddr_list);
}
