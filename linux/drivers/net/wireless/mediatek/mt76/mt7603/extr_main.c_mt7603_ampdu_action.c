
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u16 ;
struct mt76_txq {int aggr; int send_bar; int agg_ssn; } ;
struct TYPE_3__ {int idx; } ;
struct mt7603_sta {TYPE_1__ wcid; } ;
struct mt7603_dev {int mt76; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_txq {scalar_t__ drv_priv; } ;
struct ieee80211_sta {int addr; scalar_t__ drv_priv; struct ieee80211_txq** txq; } ;
struct ieee80211_hw {struct mt7603_dev* priv; } ;
struct ieee80211_ampdu_params {int action; size_t tid; size_t ssn; int buf_size; struct ieee80211_sta* sta; } ;
typedef enum ieee80211_ampdu_mlme_action { ____Placeholder_ieee80211_ampdu_mlme_action } ieee80211_ampdu_mlme_action ;


 int EINVAL ;







 int IEEE80211_SN_TO_SEQ (size_t) ;
 int ieee80211_start_tx_ba_cb_irqsafe (struct ieee80211_vif*,int ,size_t) ;
 int ieee80211_stop_tx_ba_cb_irqsafe (struct ieee80211_vif*,int ,size_t) ;
 int mt7603_mac_rx_ba_reset (struct mt7603_dev*,int ,size_t) ;
 int mt7603_mac_tx_ba_reset (struct mt7603_dev*,int ,size_t,int) ;
 int mt76_rx_aggr_start (int *,TYPE_1__*,size_t,size_t,int) ;
 int mt76_rx_aggr_stop (int *,TYPE_1__*,size_t) ;

__attribute__((used)) static int
mt7603_ampdu_action(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
      struct ieee80211_ampdu_params *params)
{
 enum ieee80211_ampdu_mlme_action action = params->action;
 struct mt7603_dev *dev = hw->priv;
 struct ieee80211_sta *sta = params->sta;
 struct ieee80211_txq *txq = sta->txq[params->tid];
 struct mt7603_sta *msta = (struct mt7603_sta *)sta->drv_priv;
 u16 tid = params->tid;
 u16 ssn = params->ssn;
 u8 ba_size = params->buf_size;
 struct mt76_txq *mtxq;

 if (!txq)
  return -EINVAL;

 mtxq = (struct mt76_txq *)txq->drv_priv;

 switch (action) {
 case 134:
  mt76_rx_aggr_start(&dev->mt76, &msta->wcid, tid, ssn,
       params->buf_size);
  mt7603_mac_rx_ba_reset(dev, sta->addr, tid);
  break;
 case 133:
  mt76_rx_aggr_stop(&dev->mt76, &msta->wcid, tid);
  break;
 case 132:
  mtxq->aggr = 1;
  mtxq->send_bar = 0;
  mt7603_mac_tx_ba_reset(dev, msta->wcid.idx, tid, ba_size);
  break;
 case 129:
 case 128:
  mtxq->aggr = 0;
  mt7603_mac_tx_ba_reset(dev, msta->wcid.idx, tid, -1);
  break;
 case 131:
  mtxq->agg_ssn = IEEE80211_SN_TO_SEQ(ssn);
  ieee80211_start_tx_ba_cb_irqsafe(vif, sta->addr, tid);
  break;
 case 130:
  mtxq->aggr = 0;
  mt7603_mac_tx_ba_reset(dev, msta->wcid.idx, tid, -1);
  ieee80211_stop_tx_ba_cb_irqsafe(vif, sta->addr, tid);
  break;
 }

 return 0;
}
