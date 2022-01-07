
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dvb_led; } ;
struct tm6000_core {scalar_t__ dev_type; TYPE_1__ gpio; } ;


 int REQ_03_SET_GET_MCU_PIN ;
 int REQ_04_EN_DISABLE_MCU_INT ;
 int TM6000_REQ07_RDA_CLK_SEL ;
 int TM6000_REQ07_RDF_PWDOWN_ACLK ;
 int TM6000_REQ07_RE2_VADC_STATUS_CTL ;
 int TM6000_REQ07_RE8_VADC_PWDOWN_CTL ;
 int TM6000_REQ07_REB_VADC_AADC_MODE ;
 scalar_t__ TM6010 ;
 int TM6010_REQ07_R3F_RESET ;
 int TM6010_REQ07_RC0_ACTIVE_VIDEO_SOURCE ;
 int TM6010_REQ07_RC1_TRESHOLD ;
 int TM6010_REQ07_RC3_HSTART1 ;
 int TM6010_REQ07_RCC_ACTIVE_IF ;
 int TM6010_REQ07_RD1_ADDR_FOR_REQ1 ;
 int TM6010_REQ07_RD2_ADDR_FOR_REQ2 ;
 int TM6010_REQ07_RD6_ENDP_REQ1_REQ2 ;
 int TM6010_REQ07_RFE_POWER_DOWN ;
 int TM6010_REQ07_RFF_SOFT_RESET ;
 int TM6010_REQ08_RE2_POWER_DOWN_CTRL1 ;
 int TM6010_REQ08_RE6_POWER_DOWN_CTRL2 ;
 int msleep (int) ;
 int tm6000_set_reg (struct tm6000_core*,int ,int,...) ;
 int tm6000_set_reg_mask (struct tm6000_core*,int ,int,int) ;

int tm6000_init_digital_mode(struct tm6000_core *dev)
{
 if (dev->dev_type == TM6010) {

  tm6000_set_reg_mask(dev, TM6010_REQ07_RCC_ACTIVE_IF,
    0x00, 0x60);

  tm6000_set_reg_mask(dev, TM6010_REQ07_RC0_ACTIVE_VIDEO_SOURCE,
    0x40, 0x40);

  tm6000_set_reg(dev, TM6010_REQ07_RFE_POWER_DOWN, 0x28);
  tm6000_set_reg(dev, TM6010_REQ08_RE2_POWER_DOWN_CTRL1, 0xfc);
  tm6000_set_reg(dev, TM6010_REQ08_RE6_POWER_DOWN_CTRL2, 0xff);
 } else {
  tm6000_set_reg(dev, TM6010_REQ07_RFF_SOFT_RESET, 0x08);
  tm6000_set_reg(dev, TM6010_REQ07_RFF_SOFT_RESET, 0x00);
  tm6000_set_reg(dev, TM6010_REQ07_R3F_RESET, 0x01);
  tm6000_set_reg(dev, TM6000_REQ07_RDF_PWDOWN_ACLK, 0x08);
  tm6000_set_reg(dev, TM6000_REQ07_RE2_VADC_STATUS_CTL, 0x0c);
  tm6000_set_reg(dev, TM6000_REQ07_RE8_VADC_PWDOWN_CTL, 0xff);
  tm6000_set_reg(dev, TM6000_REQ07_REB_VADC_AADC_MODE, 0xd8);
  tm6000_set_reg(dev, TM6010_REQ07_RC0_ACTIVE_VIDEO_SOURCE, 0x40);
  tm6000_set_reg(dev, TM6010_REQ07_RC1_TRESHOLD, 0xd0);
  tm6000_set_reg(dev, TM6010_REQ07_RC3_HSTART1, 0x09);
  tm6000_set_reg(dev, TM6000_REQ07_RDA_CLK_SEL, 0x37);
  tm6000_set_reg(dev, TM6010_REQ07_RD1_ADDR_FOR_REQ1, 0xd8);
  tm6000_set_reg(dev, TM6010_REQ07_RD2_ADDR_FOR_REQ2, 0xc0);
  tm6000_set_reg(dev, TM6010_REQ07_RD6_ENDP_REQ1_REQ2, 0x60);

  tm6000_set_reg(dev, TM6000_REQ07_RE2_VADC_STATUS_CTL, 0x0c);
  tm6000_set_reg(dev, TM6000_REQ07_RE8_VADC_PWDOWN_CTL, 0xff);
  tm6000_set_reg(dev, TM6000_REQ07_REB_VADC_AADC_MODE, 0x08);
  msleep(50);

  tm6000_set_reg(dev, REQ_04_EN_DISABLE_MCU_INT, 0x0020, 0x00);
  msleep(50);
  tm6000_set_reg(dev, REQ_04_EN_DISABLE_MCU_INT, 0x0020, 0x01);
  msleep(50);
  tm6000_set_reg(dev, REQ_04_EN_DISABLE_MCU_INT, 0x0020, 0x00);
  msleep(100);
 }


 if (dev->gpio.dvb_led) {
  tm6000_set_reg(dev, REQ_03_SET_GET_MCU_PIN,
   dev->gpio.dvb_led, 0x00);
 }

 return 0;
}
