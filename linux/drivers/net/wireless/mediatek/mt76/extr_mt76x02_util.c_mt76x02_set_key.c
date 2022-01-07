
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76_wcid {int hw_key_idx; int sw_iv; int idx; } ;
struct mt76x02_vif {int idx; struct mt76_wcid group_wcid; } ;
struct mt76x02_sta {struct mt76_wcid wcid; } ;
struct mt76x02_dev {int mt76; } ;
struct ieee80211_vif {scalar_t__ type; scalar_t__ drv_priv; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ieee80211_key_conf {int keyidx; int cipher; int flags; int hw_key_idx; } ;
struct ieee80211_hw {struct mt76x02_dev* priv; } ;
typedef enum set_key_cmd { ____Placeholder_set_key_cmd } set_key_cmd ;


 int EOPNOTSUPP ;
 int IEEE80211_KEY_FLAG_PAIRWISE ;
 int IEEE80211_KEY_FLAG_RX_MGMT ;
 int IEEE80211_KEY_FLAG_SW_MGMT_TX ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_MESH_POINT ;
 int SET_KEY ;




 scalar_t__ mt76_is_usb (struct mt76x02_dev*) ;
 int mt76_wcid_key_setup (int *,struct mt76_wcid*,struct ieee80211_key_conf*) ;
 int mt76x02_mac_shared_key_setup (struct mt76x02_dev*,int ,int,struct ieee80211_key_conf*) ;
 int mt76x02_mac_wcid_set_key (struct mt76x02_dev*,int ,struct ieee80211_key_conf*) ;

int mt76x02_set_key(struct ieee80211_hw *hw, enum set_key_cmd cmd,
      struct ieee80211_vif *vif, struct ieee80211_sta *sta,
      struct ieee80211_key_conf *key)
{
 struct mt76x02_dev *dev = hw->priv;
 struct mt76x02_vif *mvif = (struct mt76x02_vif *)vif->drv_priv;
 struct mt76x02_sta *msta;
 struct mt76_wcid *wcid;
 int idx = key->keyidx;
 int ret;


 switch (key->cipher) {
 case 128:
 case 129:
 case 130:
 case 131:
  break;
 default:
  return -EOPNOTSUPP;
 }





 if ((vif->type == NL80211_IFTYPE_ADHOC ||
      vif->type == NL80211_IFTYPE_MESH_POINT) &&
     (key->cipher == 130 ||
      key->cipher == 131) &&
     !(key->flags & IEEE80211_KEY_FLAG_PAIRWISE))
  return -EOPNOTSUPP;






 if (mt76_is_usb(dev) &&
     vif->type == NL80211_IFTYPE_AP &&
     !(key->flags & IEEE80211_KEY_FLAG_PAIRWISE))
  return -EOPNOTSUPP;

 msta = sta ? (struct mt76x02_sta *)sta->drv_priv : ((void*)0);
 wcid = msta ? &msta->wcid : &mvif->group_wcid;

 if (cmd == SET_KEY) {
  key->hw_key_idx = wcid->idx;
  wcid->hw_key_idx = idx;
  if (key->flags & IEEE80211_KEY_FLAG_RX_MGMT) {
   key->flags |= IEEE80211_KEY_FLAG_SW_MGMT_TX;
   wcid->sw_iv = 1;
  }
 } else {
  if (idx == wcid->hw_key_idx) {
   wcid->hw_key_idx = -1;
   wcid->sw_iv = 0;
  }

  key = ((void*)0);
 }
 mt76_wcid_key_setup(&dev->mt76, wcid, key);

 if (!msta) {
  if (key || wcid->hw_key_idx == idx) {
   ret = mt76x02_mac_wcid_set_key(dev, wcid->idx, key);
   if (ret)
    return ret;
  }

  return mt76x02_mac_shared_key_setup(dev, mvif->idx, idx, key);
 }

 return mt76x02_mac_wcid_set_key(dev, msta->wcid.idx, key);
}
