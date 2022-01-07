
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hw_key_idx; int idx; } ;
struct mt76x02_vif {unsigned int idx; TYPE_1__ group_wcid; } ;
struct mt76x02_dev {int mt76; } ;
struct mt76_txq {TYPE_1__* wcid; } ;
struct ieee80211_vif {TYPE_2__* txq; scalar_t__ drv_priv; } ;
struct TYPE_4__ {scalar_t__ drv_priv; } ;


 int MT_VIF_WCID (unsigned int) ;
 int memset (struct mt76x02_vif*,int ,int) ;
 int mt76_txq_init (int *,TYPE_2__*) ;

__attribute__((used)) static void
mt76x02_vif_init(struct mt76x02_dev *dev, struct ieee80211_vif *vif,
   unsigned int idx)
{
 struct mt76x02_vif *mvif = (struct mt76x02_vif *)vif->drv_priv;
 struct mt76_txq *mtxq;

 memset(mvif, 0, sizeof(*mvif));

 mvif->idx = idx;
 mvif->group_wcid.idx = MT_VIF_WCID(idx);
 mvif->group_wcid.hw_key_idx = -1;
 mtxq = (struct mt76_txq *)vif->txq->drv_priv;
 mtxq->wcid = &mvif->group_wcid;

 mt76_txq_init(&dev->mt76, vif->txq);
}
