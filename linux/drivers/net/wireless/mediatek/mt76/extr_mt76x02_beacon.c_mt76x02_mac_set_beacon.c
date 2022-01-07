
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct mt76x02_dev {int beacon_data_mask; struct sk_buff** beacons; } ;


 int ARRAY_SIZE (struct sk_buff**) ;
 int BIT (int) ;
 int MT_MAC_BSSID_DW1 ;
 int MT_MAC_BSSID_DW1_MBEACON_N ;
 int __mt76x02_mac_set_beacon (struct mt76x02_dev*,int,struct sk_buff*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int mt76_rmw_field (struct mt76x02_dev*,int ,int ,int) ;

int mt76x02_mac_set_beacon(struct mt76x02_dev *dev, u8 vif_idx,
      struct sk_buff *skb)
{
 bool force_update = 0;
 int bcn_idx = 0;
 int i;

 for (i = 0; i < ARRAY_SIZE(dev->beacons); i++) {
  if (vif_idx == i) {
   force_update = !!dev->beacons[i] ^ !!skb;

   if (dev->beacons[i])
    dev_kfree_skb(dev->beacons[i]);

   dev->beacons[i] = skb;
   __mt76x02_mac_set_beacon(dev, bcn_idx, skb);
  } else if (force_update && dev->beacons[i]) {
   __mt76x02_mac_set_beacon(dev, bcn_idx,
       dev->beacons[i]);
  }

  bcn_idx += !!dev->beacons[i];
 }

 for (i = bcn_idx; i < ARRAY_SIZE(dev->beacons); i++) {
  if (!(dev->beacon_data_mask & BIT(i)))
   break;

  __mt76x02_mac_set_beacon(dev, i, ((void*)0));
 }

 mt76_rmw_field(dev, MT_MAC_BSSID_DW1, MT_MAC_BSSID_DW1_MBEACON_N,
         bcn_idx - 1);
 return 0;
}
