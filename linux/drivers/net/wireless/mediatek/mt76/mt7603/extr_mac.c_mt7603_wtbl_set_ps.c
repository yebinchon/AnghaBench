
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int idx; } ;
struct mt7603_sta {int ps; TYPE_1__ wcid; } ;
struct mt7603_dev {int ps_lock; } ;


 int FIELD_PREP (int ,int) ;
 int MT_PSE_RTA ;
 int MT_PSE_RTA_BUSY ;
 int MT_PSE_RTA_PORT_ID ;
 int MT_PSE_RTA_QUEUE_ID ;
 int MT_PSE_RTA_REDIRECT_EN ;
 int MT_PSE_RTA_TAG_ID ;
 int MT_PSE_RTA_WRITE ;
 int MT_WTBL1_OR ;
 int MT_WTBL1_OR_PSM_WRITE ;
 int MT_WTBL1_W3_POWER_SAVE ;
 int mt7603_filter_tx (struct mt7603_dev*,int,int) ;
 scalar_t__ mt7603_wtbl1_addr (int) ;
 int mt76_clear (struct mt7603_dev*,int ,int ) ;
 int mt76_poll (struct mt7603_dev*,int ,int,int ,int) ;
 int mt76_rmw (struct mt7603_dev*,scalar_t__,int,int) ;
 int mt76_set (struct mt7603_dev*,int ,int ) ;
 int mt76_wr (struct mt7603_dev*,int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void mt7603_wtbl_set_ps(struct mt7603_dev *dev, struct mt7603_sta *sta,
   bool enabled)
{
 int idx = sta->wcid.idx;
 u32 addr;

 spin_lock_bh(&dev->ps_lock);

 if (sta->ps == enabled)
  goto out;

 mt76_wr(dev, MT_PSE_RTA,
  FIELD_PREP(MT_PSE_RTA_TAG_ID, idx) |
  FIELD_PREP(MT_PSE_RTA_PORT_ID, 0) |
  FIELD_PREP(MT_PSE_RTA_QUEUE_ID, 1) |
  FIELD_PREP(MT_PSE_RTA_REDIRECT_EN, enabled) |
  MT_PSE_RTA_WRITE | MT_PSE_RTA_BUSY);

 mt76_poll(dev, MT_PSE_RTA, MT_PSE_RTA_BUSY, 0, 5000);

 if (enabled)
  mt7603_filter_tx(dev, idx, 0);

 addr = mt7603_wtbl1_addr(idx);
 mt76_set(dev, MT_WTBL1_OR, MT_WTBL1_OR_PSM_WRITE);
 mt76_rmw(dev, addr + 3 * 4, MT_WTBL1_W3_POWER_SAVE,
   enabled * MT_WTBL1_W3_POWER_SAVE);
 mt76_clear(dev, MT_WTBL1_OR, MT_WTBL1_OR_PSM_WRITE);
 sta->ps = enabled;

out:
 spin_unlock_bh(&dev->ps_lock);
}
