
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76_wcid {int hw_key_idx; int idx; } ;
struct mt7615_sta {struct mt76_wcid wcid; } ;
struct mt7615_vif {struct mt7615_sta sta; } ;
struct mt7615_dev {int mt76; } ;
struct ieee80211_vif {scalar_t__ type; scalar_t__ drv_priv; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ieee80211_key_conf {int keyidx; int cipher; int flags; int hw_key_idx; } ;
struct ieee80211_hw {struct mt7615_dev* priv; } ;
typedef enum set_key_cmd { ____Placeholder_set_key_cmd } set_key_cmd ;


 int EOPNOTSUPP ;
 int IEEE80211_KEY_FLAG_GENERATE_MMIE ;
 int IEEE80211_KEY_FLAG_PAIRWISE ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 scalar_t__ NL80211_IFTYPE_MESH_POINT ;
 int SET_KEY ;
 int mt7615_mac_wtbl_set_key (struct mt7615_dev*,struct mt76_wcid*,struct ieee80211_key_conf*,int) ;
 int mt76_wcid_key_setup (int *,struct mt76_wcid*,struct ieee80211_key_conf*) ;

__attribute__((used)) static int mt7615_set_key(struct ieee80211_hw *hw, enum set_key_cmd cmd,
     struct ieee80211_vif *vif, struct ieee80211_sta *sta,
     struct ieee80211_key_conf *key)
{
 struct mt7615_dev *dev = hw->priv;
 struct mt7615_vif *mvif = (struct mt7615_vif *)vif->drv_priv;
 struct mt7615_sta *msta = sta ? (struct mt7615_sta *)sta->drv_priv :
      &mvif->sta;
 struct mt76_wcid *wcid = &msta->wcid;
 int idx = key->keyidx;




 if ((vif->type == NL80211_IFTYPE_ADHOC ||
      vif->type == NL80211_IFTYPE_MESH_POINT) &&
     (key->cipher == 130 ||
      key->cipher == 135) &&
     !(key->flags & IEEE80211_KEY_FLAG_PAIRWISE))
  return -EOPNOTSUPP;


 switch (key->cipher) {
 case 136:
  key->flags |= IEEE80211_KEY_FLAG_GENERATE_MMIE;
  break;
 case 128:
 case 129:
 case 130:
 case 135:
 case 134:
 case 133:
 case 132:
 case 131:
  break;
 default:
  return -EOPNOTSUPP;
 }

 if (cmd == SET_KEY) {
  key->hw_key_idx = wcid->idx;
  wcid->hw_key_idx = idx;
 } else if (idx == wcid->hw_key_idx) {
  wcid->hw_key_idx = -1;
 }
 mt76_wcid_key_setup(&dev->mt76, wcid,
       cmd == SET_KEY ? key : ((void*)0));

 return mt7615_mac_wtbl_set_key(dev, wcid, key, cmd);
}
