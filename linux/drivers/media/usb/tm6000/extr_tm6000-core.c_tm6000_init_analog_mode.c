
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct v4l2_frequency {int frequency; } ;
struct TYPE_2__ {int dvb_led; } ;
struct tm6000_core {scalar_t__ dev_type; TYPE_1__ gpio; int v4l2_dev; int freq; scalar_t__ scaler; int radio; } ;


 int REQ_03_SET_GET_MCU_PIN ;
 int TM6000_REQ07_RDA_CLK_SEL ;
 int TM6000_REQ07_RDF_PWDOWN_ACLK ;
 scalar_t__ TM6010 ;
 int TM6010_REQ07_R3F_RESET ;
 int TM6010_REQ07_RC0_ACTIVE_VIDEO_SOURCE ;
 int TM6010_REQ07_RC3_HSTART1 ;
 int TM6010_REQ07_RCC_ACTIVE_IF ;
 int TM6010_REQ07_RCC_ACTIVE_IF_AUDIO_ENABLE ;
 int TM6010_REQ07_RCC_ACTIVE_IF_VIDEO_ENABLE ;
 int TM6010_REQ07_RD1_ADDR_FOR_REQ1 ;
 int TM6010_REQ07_RD2_ADDR_FOR_REQ2 ;
 int TM6010_REQ07_RD6_ENDP_REQ1_REQ2 ;
 int TM6010_REQ07_RFF_SOFT_RESET ;
 int msleep (int) ;
 int s_frequency ;
 int tm6000_set_audio_bitrate (struct tm6000_core*,int) ;
 int tm6000_set_fourcc_format (struct tm6000_core*) ;
 int tm6000_set_reg (struct tm6000_core*,int ,int,...) ;
 int tm6000_set_reg_mask (struct tm6000_core*,int ,int,int) ;
 int tm6000_set_standard (struct tm6000_core*) ;
 int tm6000_set_vbi (struct tm6000_core*) ;
 int tuner ;
 int v4l2_device_call_all (int *,int ,int ,int ,struct v4l2_frequency*) ;

int tm6000_init_analog_mode(struct tm6000_core *dev)
{
 struct v4l2_frequency f;

 if (dev->dev_type == TM6010) {
  u8 active = TM6010_REQ07_RCC_ACTIVE_IF_AUDIO_ENABLE;

  if (!dev->radio)
   active |= TM6010_REQ07_RCC_ACTIVE_IF_VIDEO_ENABLE;


  tm6000_set_reg_mask(dev, TM6010_REQ07_RCC_ACTIVE_IF,
       active, 0x60);

  tm6000_set_reg_mask(dev, TM6010_REQ07_RC0_ACTIVE_VIDEO_SOURCE,
       0x00, 0x40);
 } else {

  tm6000_set_reg(dev, TM6010_REQ07_R3F_RESET, 0x01);

  if (dev->scaler)

   tm6000_set_reg(dev, TM6010_REQ07_RC0_ACTIVE_VIDEO_SOURCE, 0x20);
  else
   tm6000_set_reg(dev, TM6010_REQ07_RC0_ACTIVE_VIDEO_SOURCE, 0x80);

  tm6000_set_reg(dev, TM6010_REQ07_RC3_HSTART1, 0x88);
  tm6000_set_reg(dev, TM6000_REQ07_RDA_CLK_SEL, 0x23);
  tm6000_set_reg(dev, TM6010_REQ07_RD1_ADDR_FOR_REQ1, 0xc0);
  tm6000_set_reg(dev, TM6010_REQ07_RD2_ADDR_FOR_REQ2, 0xd8);
  tm6000_set_reg(dev, TM6010_REQ07_RD6_ENDP_REQ1_REQ2, 0x06);
  tm6000_set_reg(dev, TM6000_REQ07_RDF_PWDOWN_ACLK, 0x1f);


  tm6000_set_reg(dev, TM6010_REQ07_RFF_SOFT_RESET, 0x08);
  tm6000_set_reg(dev, TM6010_REQ07_RFF_SOFT_RESET, 0x00);

  tm6000_set_fourcc_format(dev);


  tm6000_set_reg(dev, TM6010_REQ07_R3F_RESET, 0x00);
 }
 msleep(20);
 f.frequency = dev->freq;
 v4l2_device_call_all(&dev->v4l2_dev, 0, tuner, s_frequency, &f);

 msleep(100);
 tm6000_set_standard(dev);
 tm6000_set_vbi(dev);
 tm6000_set_audio_bitrate(dev, 48000);


 if (dev->gpio.dvb_led) {
  tm6000_set_reg(dev, REQ_03_SET_GET_MCU_PIN,
   dev->gpio.dvb_led, 0x01);
 }

 return 0;
}
