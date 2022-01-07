
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
 int tm6000_set_reg_mask (struct tm6000_core*,int ,int,int) ;

__attribute__((used)) static void tm6010_set_mute_adc(struct tm6000_core *dev, u8 mute)
{
 u8 mute_reg = 0;

 if (mute)
  mute_reg = 0x20;

 if (dev->dev_type == TM6010) {
  tm6000_set_reg_mask(dev, TM6010_REQ08_RF2_LEFT_CHANNEL_VOL,
       mute_reg, 0x20);
  tm6000_set_reg_mask(dev, TM6010_REQ08_RF3_RIGHT_CHANNEL_VOL,
       mute_reg, 0x20);
 } else {
  tm6000_set_reg_mask(dev, TM6000_REQ07_REC_VADC_AADC_LVOL,
       mute_reg, 0x20);
  tm6000_set_reg_mask(dev, TM6000_REQ07_RED_VADC_AADC_RVOL,
       mute_reg, 0x20);
 }
}
