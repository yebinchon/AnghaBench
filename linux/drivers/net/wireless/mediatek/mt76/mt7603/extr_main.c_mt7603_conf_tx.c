
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
typedef size_t u16 ;
struct TYPE_6__ {int mutex; TYPE_2__* q_tx; } ;
struct mt7603_dev {TYPE_3__ mt76; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_tx_queue_params {size_t cw_min; size_t cw_max; size_t txop; size_t aifs; } ;
struct ieee80211_hw {struct mt7603_dev* priv; } ;
struct TYPE_5__ {TYPE_1__* q; } ;
struct TYPE_4__ {size_t hw_idx; } ;


 int MT_WMM_AIFSN ;
 size_t MT_WMM_AIFSN_MASK ;
 size_t MT_WMM_AIFSN_SHIFT (size_t) ;
 int MT_WMM_CWMAX (size_t) ;
 size_t MT_WMM_CWMAX_MASK ;
 size_t MT_WMM_CWMAX_SHIFT (size_t) ;
 int MT_WMM_CWMIN ;
 size_t MT_WMM_CWMIN_MASK ;
 size_t MT_WMM_CWMIN_SHIFT (size_t) ;
 int MT_WMM_TXOP (size_t) ;
 size_t MT_WMM_TXOP_MASK ;
 size_t MT_WMM_TXOP_SHIFT (size_t) ;
 int mt7603_mac_start (struct mt7603_dev*) ;
 int mt7603_mac_stop (struct mt7603_dev*) ;
 size_t mt76_rr (struct mt7603_dev*,int ) ;
 int mt76_wr (struct mt7603_dev*,int ,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
mt7603_conf_tx(struct ieee80211_hw *hw, struct ieee80211_vif *vif, u16 queue,
        const struct ieee80211_tx_queue_params *params)
{
 struct mt7603_dev *dev = hw->priv;
 u16 cw_min = (1 << 5) - 1;
 u16 cw_max = (1 << 10) - 1;
 u32 val;

 queue = dev->mt76.q_tx[queue].q->hw_idx;

 if (params->cw_min)
  cw_min = params->cw_min;
 if (params->cw_max)
  cw_max = params->cw_max;

 mutex_lock(&dev->mt76.mutex);
 mt7603_mac_stop(dev);

 val = mt76_rr(dev, MT_WMM_TXOP(queue));
 val &= ~(MT_WMM_TXOP_MASK << MT_WMM_TXOP_SHIFT(queue));
 val |= params->txop << MT_WMM_TXOP_SHIFT(queue);
 mt76_wr(dev, MT_WMM_TXOP(queue), val);

 val = mt76_rr(dev, MT_WMM_AIFSN);
 val &= ~(MT_WMM_AIFSN_MASK << MT_WMM_AIFSN_SHIFT(queue));
 val |= params->aifs << MT_WMM_AIFSN_SHIFT(queue);
 mt76_wr(dev, MT_WMM_AIFSN, val);

 val = mt76_rr(dev, MT_WMM_CWMIN);
 val &= ~(MT_WMM_CWMIN_MASK << MT_WMM_CWMIN_SHIFT(queue));
 val |= cw_min << MT_WMM_CWMIN_SHIFT(queue);
 mt76_wr(dev, MT_WMM_CWMIN, val);

 val = mt76_rr(dev, MT_WMM_CWMAX(queue));
 val &= ~(MT_WMM_CWMAX_MASK << MT_WMM_CWMAX_SHIFT(queue));
 val |= cw_max << MT_WMM_CWMAX_SHIFT(queue);
 mt76_wr(dev, MT_WMM_CWMAX(queue), val);

 mt7603_mac_start(dev);
 mutex_unlock(&dev->mt76.mutex);

 return 0;
}
