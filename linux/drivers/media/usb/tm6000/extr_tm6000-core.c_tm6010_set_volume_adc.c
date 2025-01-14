
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tm6000_core {scalar_t__ dev_type; } ;


 int TM6000_REQ07_REC_VADC_AADC_LVOL ;
 int TM6000_REQ07_RED_VADC_AADC_RVOL ;
 scalar_t__ TM6010 ;
 int TM6010_REQ08_RF2_LEFT_CHANNEL_VOL ;
 int TM6010_REQ08_RF3_RIGHT_CHANNEL_VOL ;
 int tm6000_set_reg (struct tm6000_core*,int ,int) ;

__attribute__((used)) static void tm6010_set_volume_adc(struct tm6000_core *dev, int vol)
{
 u8 vol_reg;

 vol_reg = (vol + 0x10) & 0x1f;

 if (dev->dev_type == TM6010) {
  tm6000_set_reg(dev, TM6010_REQ08_RF2_LEFT_CHANNEL_VOL, vol_reg);
  tm6000_set_reg(dev, TM6010_REQ08_RF3_RIGHT_CHANNEL_VOL, vol_reg);
 } else {
  tm6000_set_reg(dev, TM6000_REQ07_REC_VADC_AADC_LVOL, vol_reg);
  tm6000_set_reg(dev, TM6000_REQ07_RED_VADC_AADC_RVOL, vol_reg);
 }
}
