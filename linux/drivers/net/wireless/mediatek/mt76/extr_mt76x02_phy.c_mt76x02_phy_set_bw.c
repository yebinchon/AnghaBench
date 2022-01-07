
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mt76x02_dev {int dummy; } ;


 int AGC ;
 int CORE ;
 int MT_BBP (int ,int) ;
 int MT_BBP_AGC_R0_BW ;
 int MT_BBP_AGC_R0_CTRL_CHAN ;
 int MT_BBP_CORE_R1_BW ;
 int MT_BBP_TXBE_R0_CTRL_CHAN ;


 int TXBE ;
 int mt76_rmw_field (struct mt76x02_dev*,int ,int ,int) ;

void mt76x02_phy_set_bw(struct mt76x02_dev *dev, int width, u8 ctrl)
{
 int core_val, agc_val;

 switch (width) {
 case 128:
  core_val = 3;
  agc_val = 7;
  break;
 case 129:
  core_val = 2;
  agc_val = 3;
  break;
 default:
  core_val = 0;
  agc_val = 1;
  break;
 }

 mt76_rmw_field(dev, MT_BBP(CORE, 1), MT_BBP_CORE_R1_BW, core_val);
 mt76_rmw_field(dev, MT_BBP(AGC, 0), MT_BBP_AGC_R0_BW, agc_val);
 mt76_rmw_field(dev, MT_BBP(AGC, 0), MT_BBP_AGC_R0_CTRL_CHAN, ctrl);
 mt76_rmw_field(dev, MT_BBP(TXBE, 0), MT_BBP_TXBE_R0_CTRL_CHAN, ctrl);
}
