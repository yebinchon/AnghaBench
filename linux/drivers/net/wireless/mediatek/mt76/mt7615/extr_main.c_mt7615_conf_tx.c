
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mt7615_vif {int wmm_idx; } ;
struct mt7615_dev {int dummy; } ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_tx_queue_params {int dummy; } ;
struct ieee80211_hw {struct mt7615_dev* priv; } ;


 int MT7615_MAX_WMM_SETS ;
 int mt7615_mcu_set_wmm (struct mt7615_dev*,int,struct ieee80211_tx_queue_params const*) ;

__attribute__((used)) static int
mt7615_conf_tx(struct ieee80211_hw *hw, struct ieee80211_vif *vif, u16 queue,
        const struct ieee80211_tx_queue_params *params)
{
 struct mt7615_vif *mvif = (struct mt7615_vif *)vif->drv_priv;
 struct mt7615_dev *dev = hw->priv;

 queue += mvif->wmm_idx * MT7615_MAX_WMM_SETS;

 return mt7615_mcu_set_wmm(dev, queue, params);
}
