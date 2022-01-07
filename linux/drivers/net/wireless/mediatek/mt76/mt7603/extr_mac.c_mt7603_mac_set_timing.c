
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {TYPE_1__* chan; } ;
struct TYPE_6__ {TYPE_2__ chandef; } ;
struct mt7603_dev {int coverage_class; int slottime; TYPE_3__ mt76; } ;
struct TYPE_4__ {scalar_t__ band; } ;


 int FIELD_PREP (int ,int) ;
 int MT7603_CFEND_RATE_11B ;
 int MT7603_CFEND_RATE_DEFAULT ;
 int MT_AGG_CONTROL ;
 int MT_AGG_CONTROL_CFEND_RATE ;
 int MT_ARB_SCR ;
 int MT_ARB_SCR_RX_DISABLE ;
 int MT_ARB_SCR_TX_DISABLE ;
 int MT_IFS ;
 int MT_IFS_EIFS ;
 int MT_IFS_RIFS ;
 int MT_IFS_SIFS ;
 int MT_IFS_SLOT ;
 int MT_TIMEOUT_CCK ;
 int MT_TIMEOUT_OFDM ;
 int MT_TIMEOUT_VAL_CCA ;
 int MT_TIMEOUT_VAL_PLCP ;
 scalar_t__ NL80211_BAND_5GHZ ;
 int mt76_clear (struct mt7603_dev*,int ,int) ;
 int mt76_rmw_field (struct mt7603_dev*,int ,int ,int) ;
 int mt76_set (struct mt7603_dev*,int ,int) ;
 int mt76_wr (struct mt7603_dev*,int ,int) ;
 int udelay (int) ;

void mt7603_mac_set_timing(struct mt7603_dev *dev)
{
 u32 cck = FIELD_PREP(MT_TIMEOUT_VAL_PLCP, 231) |
    FIELD_PREP(MT_TIMEOUT_VAL_CCA, 48);
 u32 ofdm = FIELD_PREP(MT_TIMEOUT_VAL_PLCP, 60) |
     FIELD_PREP(MT_TIMEOUT_VAL_CCA, 24);
 int offset = 3 * dev->coverage_class;
 u32 reg_offset = FIELD_PREP(MT_TIMEOUT_VAL_PLCP, offset) |
    FIELD_PREP(MT_TIMEOUT_VAL_CCA, offset);
 int sifs;
 u32 val;

 if (dev->mt76.chandef.chan->band == NL80211_BAND_5GHZ)
  sifs = 16;
 else
  sifs = 10;

 mt76_set(dev, MT_ARB_SCR,
   MT_ARB_SCR_TX_DISABLE | MT_ARB_SCR_RX_DISABLE);
 udelay(1);

 mt76_wr(dev, MT_TIMEOUT_CCK, cck + reg_offset);
 mt76_wr(dev, MT_TIMEOUT_OFDM, ofdm + reg_offset);
 mt76_wr(dev, MT_IFS,
  FIELD_PREP(MT_IFS_EIFS, 360) |
  FIELD_PREP(MT_IFS_RIFS, 2) |
  FIELD_PREP(MT_IFS_SIFS, sifs) |
  FIELD_PREP(MT_IFS_SLOT, dev->slottime));

 if (dev->slottime < 20)
  val = MT7603_CFEND_RATE_DEFAULT;
 else
  val = MT7603_CFEND_RATE_11B;

 mt76_rmw_field(dev, MT_AGG_CONTROL, MT_AGG_CONTROL_CFEND_RATE, val);

 mt76_clear(dev, MT_ARB_SCR,
     MT_ARB_SCR_TX_DISABLE | MT_ARB_SCR_RX_DISABLE);
}
