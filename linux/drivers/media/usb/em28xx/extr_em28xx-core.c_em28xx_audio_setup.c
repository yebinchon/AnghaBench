
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {int ac97; } ;
struct em28xx {scalar_t__ chip_id; scalar_t__ usb_audio_type; TYPE_2__* intf; TYPE_1__ audio_mode; void* int_audio_type; } ;
struct TYPE_4__ {int dev; } ;


 int AC97_RESET ;
 int AC97_VENDOR_ID1 ;
 int AC97_VENDOR_ID2 ;
 scalar_t__ CHIP_ID_EM28174 ;
 scalar_t__ CHIP_ID_EM28178 ;
 scalar_t__ CHIP_ID_EM2860 ;
 scalar_t__ CHIP_ID_EM2870 ;
 scalar_t__ CHIP_ID_EM2874 ;
 int EM2820_CHIPCFG_I2S_1_SAMPRATE ;
 int EM2860_CHIPCFG_I2S_5_SAMPRATES ;



 int EM28XX_CHIPCFG_AC97 ;
 int EM28XX_CHIPCFG_AUDIOMASK ;
 void* EM28XX_INT_AUDIO_AC97 ;
 void* EM28XX_INT_AUDIO_I2S ;
 void* EM28XX_INT_AUDIO_NONE ;

 int EM28XX_R00_CHIPCFG ;
 void* EM28XX_USB_AUDIO_NONE ;
 scalar_t__ EM28XX_USB_AUDIO_VENDOR ;
 int dev_info (int *,char*,...) ;
 int dev_warn (int *,char*,...) ;
 int em28xx_audio_analog_set (struct em28xx*) ;
 int em28xx_read_ac97 (struct em28xx*,int ) ;
 int em28xx_read_reg (struct em28xx*,int ) ;

int em28xx_audio_setup(struct em28xx *dev)
{
 int vid1, vid2, feat, cfg;
 u32 vid = 0;
 u8 i2s_samplerates;

 if (dev->chip_id == CHIP_ID_EM2870 ||
     dev->chip_id == CHIP_ID_EM2874 ||
     dev->chip_id == CHIP_ID_EM28174 ||
     dev->chip_id == CHIP_ID_EM28178) {

  dev->int_audio_type = EM28XX_INT_AUDIO_NONE;
  dev->usb_audio_type = EM28XX_USB_AUDIO_NONE;
  return 0;
 }


 cfg = em28xx_read_reg(dev, EM28XX_R00_CHIPCFG);
 dev_info(&dev->intf->dev, "Config register raw data: 0x%02x\n", cfg);
 if (cfg < 0) {

  dev->int_audio_type = EM28XX_INT_AUDIO_AC97;
 } else if ((cfg & EM28XX_CHIPCFG_AUDIOMASK) == 0x00) {

  dev->int_audio_type = EM28XX_INT_AUDIO_NONE;
  dev->usb_audio_type = EM28XX_USB_AUDIO_NONE;
  return 0;
 } else if ((cfg & EM28XX_CHIPCFG_AUDIOMASK) != EM28XX_CHIPCFG_AC97) {
  dev->int_audio_type = EM28XX_INT_AUDIO_I2S;
  if (dev->chip_id < CHIP_ID_EM2860 &&
      (cfg & EM28XX_CHIPCFG_AUDIOMASK) ==
      EM2820_CHIPCFG_I2S_1_SAMPRATE)
   i2s_samplerates = 1;
  else if (dev->chip_id >= CHIP_ID_EM2860 &&
    (cfg & EM28XX_CHIPCFG_AUDIOMASK) ==
    EM2860_CHIPCFG_I2S_5_SAMPRATES)
   i2s_samplerates = 5;
  else
   i2s_samplerates = 3;
  dev_info(&dev->intf->dev, "I2S Audio (%d sample rate(s))\n",
    i2s_samplerates);

  dev->audio_mode.ac97 = 128;
  goto init_audio;
 } else {
  dev->int_audio_type = EM28XX_INT_AUDIO_AC97;
 }

 dev->audio_mode.ac97 = 130;

 vid1 = em28xx_read_ac97(dev, AC97_VENDOR_ID1);
 if (vid1 < 0) {





  dev_warn(&dev->intf->dev,
    "AC97 chip type couldn't be determined\n");
  dev->audio_mode.ac97 = 128;
  if (dev->usb_audio_type == EM28XX_USB_AUDIO_VENDOR)
   dev->usb_audio_type = EM28XX_USB_AUDIO_NONE;
  dev->int_audio_type = EM28XX_INT_AUDIO_NONE;
  goto init_audio;
 }

 vid2 = em28xx_read_ac97(dev, AC97_VENDOR_ID2);
 if (vid2 < 0)
  goto init_audio;

 vid = vid1 << 16 | vid2;
 dev_warn(&dev->intf->dev, "AC97 vendor ID = 0x%08x\n", vid);

 feat = em28xx_read_ac97(dev, AC97_RESET);
 if (feat < 0)
  goto init_audio;

 dev_warn(&dev->intf->dev, "AC97 features = 0x%04x\n", feat);


 if ((vid == 0xffffffff || vid == 0x83847650) && feat == 0x6a90)
  dev->audio_mode.ac97 = 131;
 else if ((vid >> 8) == 0x838476)
  dev->audio_mode.ac97 = 129;

init_audio:

 switch (dev->audio_mode.ac97) {
 case 128:
  dev_info(&dev->intf->dev, "No AC97 audio processor\n");
  break;
 case 131:
  dev_info(&dev->intf->dev,
    "Empia 202 AC97 audio processor detected\n");
  break;
 case 129:
  dev_info(&dev->intf->dev,
    "Sigmatel audio processor detected (stac 97%02x)\n",
    vid & 0xff);
  break;
 case 130:
  dev_warn(&dev->intf->dev,
    "Unknown AC97 audio processor detected!\n");
  break;
 default:
  break;
 }

 return em28xx_audio_analog_set(dev);
}
