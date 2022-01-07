
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76_wcid {int hw_key_idx; int idx; } ;
struct mt7603_sta {struct mt76_wcid wcid; } ;
struct mt7603_vif {struct mt7603_sta sta; } ;
struct mt7603_dev {int mt76; } ;
struct ieee80211_vif {scalar_t__ type; scalar_t__ drv_priv; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ieee80211_key_conf {int keyidx; int cipher; int flags; int hw_key_idx; } ;
struct ieee80211_hw {struct mt7603_dev* priv; } ;
typedef enum set_key_cmd { ____Placeholder_set_key_cmd } set_key_cmd ;


 int EOPNOTSUPP ;
 int IEEE80211_KEY_FLAG_PAIRWISE ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 scalar_t__ NL80211_IFTYPE_MESH_POINT ;
 int SET_KEY ;


 int mt7603_wtbl_set_key (struct mt7603_dev*,int ,struct ieee80211_key_conf*) ;
 int mt76_wcid_key_setup (int *,struct mt76_wcid*,struct ieee80211_key_conf*) ;

__attribute__((used)) static int
mt7603_set_key(struct ieee80211_hw *hw, enum set_key_cmd cmd,
        struct ieee80211_vif *vif, struct ieee80211_sta *sta,
        struct ieee80211_key_conf *key)
{
 struct mt7603_dev *dev = hw->priv;
 struct mt7603_vif *mvif = (struct mt7603_vif *)vif->drv_priv;
 struct mt7603_sta *msta = sta ? (struct mt7603_sta *)sta->drv_priv :
      &mvif->sta;
 struct mt76_wcid *wcid = &msta->wcid;
 int idx = key->keyidx;


 switch (key->cipher) {
 case 128:
 case 129:
  break;
 default:
  return -EOPNOTSUPP;
 }





 if ((vif->type == NL80211_IFTYPE_ADHOC ||
      vif->type == NL80211_IFTYPE_MESH_POINT) &&
     (key->cipher == 128 ||
      key->cipher == 129) &&
     !(key->flags & IEEE80211_KEY_FLAG_PAIRWISE))
  return -EOPNOTSUPP;

 if (cmd == SET_KEY) {
  key->hw_key_idx = wcid->idx;
  wcid->hw_key_idx = idx;
 } else {
  if (idx == wcid->hw_key_idx)
   wcid->hw_key_idx = -1;

  key = ((void*)0);
 }
 mt76_wcid_key_setup(&dev->mt76, wcid, key);

 return mt7603_wtbl_set_key(dev, wcid->idx, key);
}
