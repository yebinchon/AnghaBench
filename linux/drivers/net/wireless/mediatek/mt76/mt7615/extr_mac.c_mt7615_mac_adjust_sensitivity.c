
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct mt7615_dev {int false_cca_ofdm; int false_cca_cck; int ofdm_sensitivity; int cck_sensitivity; int last_cca_adj; int mt76; } ;
typedef int s8 ;


 scalar_t__ MT_FRAC (int,int) ;
 int MT_WF_PHY_B0_MIN_PRI_PWR ;
 int MT_WF_PHY_B0_PD_CCK (int) ;
 int MT_WF_PHY_B0_PD_CCK_MASK ;
 int MT_WF_PHY_B0_PD_OFDM (int) ;
 int MT_WF_PHY_B0_PD_OFDM_MASK ;
 int MT_WF_PHY_B0_RXTD_CCK_PD ;
 int MT_WF_PHY_B1_PD_CCK (int) ;
 int MT_WF_PHY_B1_PD_CCK_MASK ;
 int MT_WF_PHY_B1_RXTD_CCK_PD ;
 int jiffies ;
 int min (int,int) ;
 int mt7615_mac_set_default_sensitivity (struct mt7615_dev*) ;
 int mt76_get_min_avg_rssi (int *) ;
 int mt76_rmw (struct mt7615_dev*,int ,int ,int ) ;

__attribute__((used)) static void
mt7615_mac_adjust_sensitivity(struct mt7615_dev *dev,
         u32 rts_err_rate, bool ofdm)
{
 int false_cca = ofdm ? dev->false_cca_ofdm : dev->false_cca_cck;
 u16 def_th = ofdm ? -98 : -110;
 bool update = 0;
 s8 *sensitivity;
 int signal;

 sensitivity = ofdm ? &dev->ofdm_sensitivity : &dev->cck_sensitivity;
 signal = mt76_get_min_avg_rssi(&dev->mt76);
 if (!signal) {
  mt7615_mac_set_default_sensitivity(dev);
  return;
 }

 signal = min(signal, -72);
 if (false_cca > 500) {
  if (rts_err_rate > MT_FRAC(40, 100))
   return;


  if (*sensitivity == def_th && signal > -90) {
   *sensitivity = -90;
   update = 1;
  } else if (*sensitivity + 2 < signal) {
   *sensitivity += 2;
   update = 1;
  }
 } else if ((false_cca > 0 && false_cca < 50) ||
     rts_err_rate > MT_FRAC(60, 100)) {

  if (*sensitivity - 2 >= def_th) {
   *sensitivity -= 2;
   update = 1;
  }
 }

 if (*sensitivity > signal) {
  *sensitivity = signal;
  update = 1;
 }

 if (update) {
  u16 val;

  if (ofdm) {

   val = *sensitivity * 2 + 512;
   mt76_rmw(dev, MT_WF_PHY_B0_MIN_PRI_PWR,
     MT_WF_PHY_B0_PD_OFDM_MASK,
     MT_WF_PHY_B0_PD_OFDM(val));
  } else {
   val = *sensitivity + 256;
   mt76_rmw(dev, MT_WF_PHY_B0_RXTD_CCK_PD,
     MT_WF_PHY_B0_PD_CCK_MASK,
     MT_WF_PHY_B0_PD_CCK(val));
   mt76_rmw(dev, MT_WF_PHY_B1_RXTD_CCK_PD,
     MT_WF_PHY_B1_PD_CCK_MASK,
     MT_WF_PHY_B1_PD_CCK(val));
  }
  dev->last_cca_adj = jiffies;
 }
}
