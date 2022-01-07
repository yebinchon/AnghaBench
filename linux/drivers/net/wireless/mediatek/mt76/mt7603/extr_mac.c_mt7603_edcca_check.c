
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7603_dev {int ed_strong_signal; int ed_trigger; int ed_time; int ed_monitor; } ;
typedef int ktime_t ;


 int FIELD_GET (int ,int) ;
 int MT7603_EDCCA_BLOCK_TH ;
 int MT_AGC (int) ;
 int MT_AGC_41_RSSI_0 ;
 int MT_AGC_41_RSSI_1 ;
 int MT_MIB_STAT_ED ;
 int MT_MIB_STAT_ED_MASK ;
 int ktime_get_boottime () ;
 int ktime_sub (int ,int ) ;
 int ktime_to_us (int ) ;
 int max (int,int) ;
 int mt7603_edcca_set_strict (struct mt7603_dev*,int) ;
 int mt76_rr (struct mt7603_dev*,int ) ;

__attribute__((used)) static void
mt7603_edcca_check(struct mt7603_dev *dev)
{
 u32 val = mt76_rr(dev, MT_AGC(41));
 ktime_t cur_time;
 int rssi0, rssi1;
 u32 active;
 u32 ed_busy;

 if (!dev->ed_monitor)
  return;

 rssi0 = FIELD_GET(MT_AGC_41_RSSI_0, val);
 if (rssi0 > 128)
  rssi0 -= 256;

 rssi1 = FIELD_GET(MT_AGC_41_RSSI_1, val);
 if (rssi1 > 128)
  rssi1 -= 256;

 if (max(rssi0, rssi1) >= -40 &&
     dev->ed_strong_signal < MT7603_EDCCA_BLOCK_TH)
  dev->ed_strong_signal++;
 else if (dev->ed_strong_signal > 0)
  dev->ed_strong_signal--;

 cur_time = ktime_get_boottime();
 ed_busy = mt76_rr(dev, MT_MIB_STAT_ED) & MT_MIB_STAT_ED_MASK;

 active = ktime_to_us(ktime_sub(cur_time, dev->ed_time));
 dev->ed_time = cur_time;

 if (!active)
  return;

 if (100 * ed_busy / active > 90) {
  if (dev->ed_trigger < 0)
   dev->ed_trigger = 0;
  dev->ed_trigger++;
 } else {
  if (dev->ed_trigger > 0)
   dev->ed_trigger = 0;
  dev->ed_trigger--;
 }

 if (dev->ed_trigger > MT7603_EDCCA_BLOCK_TH ||
     dev->ed_strong_signal < MT7603_EDCCA_BLOCK_TH / 2) {
  mt7603_edcca_set_strict(dev, 1);
 } else if (dev->ed_trigger < -MT7603_EDCCA_BLOCK_TH) {
  mt7603_edcca_set_strict(dev, 0);
 }

 if (dev->ed_trigger > MT7603_EDCCA_BLOCK_TH)
  dev->ed_trigger = MT7603_EDCCA_BLOCK_TH;
 else if (dev->ed_trigger < -MT7603_EDCCA_BLOCK_TH)
  dev->ed_trigger = -MT7603_EDCCA_BLOCK_TH;
}
