
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct mt76_txq {TYPE_2__* wcid; } ;
struct TYPE_6__ {int idx; int hw_key_idx; } ;
struct TYPE_5__ {TYPE_2__ wcid; } ;
struct mt7603_vif {int idx; TYPE_1__ sta; } ;
struct TYPE_7__ {int mutex; int * wcid; } ;
struct mt7603_dev {TYPE_3__ mt76; int vif_mask; } ;
struct ieee80211_vif {scalar_t__ type; TYPE_4__* txq; scalar_t__ addr; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct mt7603_dev* priv; } ;
struct TYPE_8__ {scalar_t__ drv_priv; } ;


 int BIT (int) ;
 int ENOSPC ;
 int ETH_ALEN ;
 int MT7603_MAX_INTERFACES ;
 int MT7603_WTBL_RESERVED ;
 int MT_BSSID0 (int) ;
 int MT_BSSID1 (int) ;
 int MT_BSSID1_VALID ;
 int MT_MAC_ADDR0 (int) ;
 int MT_MAC_ADDR1 (int) ;
 int MT_MAC_ADDR1_VALID ;
 scalar_t__ NL80211_IFTYPE_AP ;
 int eth_broadcast_addr (int *) ;
 int ffs (int ) ;
 int get_unaligned_le16 (scalar_t__) ;
 int get_unaligned_le32 (scalar_t__) ;
 int mt7603_wtbl_init (struct mt7603_dev*,int,int,int *) ;
 int mt76_txq_init (TYPE_3__*,TYPE_4__*) ;
 int mt76_wr (struct mt7603_dev*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rcu_assign_pointer (int ,TYPE_2__*) ;

__attribute__((used)) static int
mt7603_add_interface(struct ieee80211_hw *hw, struct ieee80211_vif *vif)
{
 struct mt7603_vif *mvif = (struct mt7603_vif *)vif->drv_priv;
 struct mt7603_dev *dev = hw->priv;
 struct mt76_txq *mtxq;
 u8 bc_addr[ETH_ALEN];
 int idx;
 int ret = 0;

 mutex_lock(&dev->mt76.mutex);

 mvif->idx = ffs(~dev->vif_mask) - 1;
 if (mvif->idx >= MT7603_MAX_INTERFACES) {
  ret = -ENOSPC;
  goto out;
 }

 mt76_wr(dev, MT_MAC_ADDR0(mvif->idx),
  get_unaligned_le32(vif->addr));
 mt76_wr(dev, MT_MAC_ADDR1(mvif->idx),
  (get_unaligned_le16(vif->addr + 4) |
   MT_MAC_ADDR1_VALID));

 if (vif->type == NL80211_IFTYPE_AP) {
  mt76_wr(dev, MT_BSSID0(mvif->idx),
   get_unaligned_le32(vif->addr));
  mt76_wr(dev, MT_BSSID1(mvif->idx),
   (get_unaligned_le16(vif->addr + 4) |
    MT_BSSID1_VALID));
 }

 idx = MT7603_WTBL_RESERVED - 1 - mvif->idx;
 dev->vif_mask |= BIT(mvif->idx);
 mvif->sta.wcid.idx = idx;
 mvif->sta.wcid.hw_key_idx = -1;

 eth_broadcast_addr(bc_addr);
 mt7603_wtbl_init(dev, idx, mvif->idx, bc_addr);

 mtxq = (struct mt76_txq *)vif->txq->drv_priv;
 mtxq->wcid = &mvif->sta.wcid;
 mt76_txq_init(&dev->mt76, vif->txq);
 rcu_assign_pointer(dev->mt76.wcid[idx], &mvif->sta.wcid);

out:
 mutex_unlock(&dev->mt76.mutex);

 return ret;
}
