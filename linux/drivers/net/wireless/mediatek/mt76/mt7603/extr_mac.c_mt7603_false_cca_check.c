
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7603_dev {int false_cca_ofdm; int false_cca_cck; int sensitivity; void* last_cca_adj; int mt76; } ;


 int FIELD_GET (int ,int ) ;
 int HZ ;
 int MT_PHYCTRL_STAT_MDRDY ;
 int MT_PHYCTRL_STAT_MDRDY_CCK ;
 int MT_PHYCTRL_STAT_MDRDY_OFDM ;
 int MT_PHYCTRL_STAT_PD ;
 int MT_PHYCTRL_STAT_PD_CCK ;
 int MT_PHYCTRL_STAT_PD_OFDM ;
 void* jiffies ;
 int mt7603_adjust_sensitivity (struct mt7603_dev*) ;
 int mt7603_cca_stats_reset (struct mt7603_dev*) ;
 int mt76_get_min_avg_rssi (int *) ;
 int mt76_rr (struct mt7603_dev*,int ) ;
 scalar_t__ time_after (void*,void*) ;

__attribute__((used)) static void
mt7603_false_cca_check(struct mt7603_dev *dev)
{
 int pd_cck, pd_ofdm, mdrdy_cck, mdrdy_ofdm;
 int false_cca;
 int min_signal;
 u32 val;

 val = mt76_rr(dev, MT_PHYCTRL_STAT_PD);
 pd_cck = FIELD_GET(MT_PHYCTRL_STAT_PD_CCK, val);
 pd_ofdm = FIELD_GET(MT_PHYCTRL_STAT_PD_OFDM, val);

 val = mt76_rr(dev, MT_PHYCTRL_STAT_MDRDY);
 mdrdy_cck = FIELD_GET(MT_PHYCTRL_STAT_MDRDY_CCK, val);
 mdrdy_ofdm = FIELD_GET(MT_PHYCTRL_STAT_MDRDY_OFDM, val);

 dev->false_cca_ofdm = pd_ofdm - mdrdy_ofdm;
 dev->false_cca_cck = pd_cck - mdrdy_cck;

 mt7603_cca_stats_reset(dev);

 min_signal = mt76_get_min_avg_rssi(&dev->mt76);
 if (!min_signal) {
  dev->sensitivity = 0;
  dev->last_cca_adj = jiffies;
  goto out;
 }

 min_signal -= 15;

 false_cca = dev->false_cca_ofdm + dev->false_cca_cck;
 if (false_cca > 600) {
  if (!dev->sensitivity)
   dev->sensitivity = -92;
  else
   dev->sensitivity += 2;
  dev->last_cca_adj = jiffies;
 } else if (false_cca < 100 ||
     time_after(jiffies, dev->last_cca_adj + 10 * HZ)) {
  dev->last_cca_adj = jiffies;
  if (!dev->sensitivity)
   goto out;

  dev->sensitivity -= 2;
 }

 if (dev->sensitivity && dev->sensitivity > min_signal) {
  dev->sensitivity = min_signal;
  dev->last_cca_adj = jiffies;
 }

out:
 mt7603_adjust_sensitivity(dev);
}
