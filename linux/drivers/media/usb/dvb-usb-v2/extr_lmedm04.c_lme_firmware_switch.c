
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int idProduct; } ;
struct usb_device {int dev; TYPE_1__ descriptor; } ;
struct lme2510_state {int dvb_usb_lme2510_firmware; } ;
struct firmware {int dummy; } ;
struct dvb_usb_device {struct usb_device* udev; struct lme2510_state* priv; } ;


 void* TUNER_DEFAULT ;

 int TUNER_RS2000 ;


 int dvb_usb_lme2510_firmware ;
 char* fw_c_lg ;
 char* fw_c_rs2000 ;
 char* fw_c_s0194 ;
 char* fw_c_s7395 ;
 char* fw_lg ;
 char* fw_s0194 ;
 int info (char*,char const*) ;
 int le16_to_cpu (int ) ;
 int lme_coldreset (struct dvb_usb_device*) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char const*,int *) ;

__attribute__((used)) static const char *lme_firmware_switch(struct dvb_usb_device *d, int cold)
{
 struct lme2510_state *st = d->priv;
 struct usb_device *udev = d->udev;
 const struct firmware *fw = ((void*)0);
 const char *fw_lme;
 int ret = 0;

 cold = (cold > 0) ? (cold & 1) : 0;

 switch (le16_to_cpu(udev->descriptor.idProduct)) {
 case 0x1122:
  switch (st->dvb_usb_lme2510_firmware) {
  default:
  case 129:
   fw_lme = fw_s0194;
   ret = request_firmware(&fw, fw_lme, &udev->dev);
   if (ret == 0) {
    st->dvb_usb_lme2510_firmware = 129;
    cold = 0;
    break;
   }

  case 130:
   fw_lme = fw_lg;
   ret = request_firmware(&fw, fw_lme, &udev->dev);
   if (ret == 0) {
    st->dvb_usb_lme2510_firmware = 130;
    break;
   }
   st->dvb_usb_lme2510_firmware = TUNER_DEFAULT;
   break;
  }
  break;
 case 0x1120:
  switch (st->dvb_usb_lme2510_firmware) {
  default:
  case 128:
   fw_lme = fw_c_s7395;
   ret = request_firmware(&fw, fw_lme, &udev->dev);
   if (ret == 0) {
    st->dvb_usb_lme2510_firmware = 128;
    cold = 0;
    break;
   }

  case 130:
   fw_lme = fw_c_lg;
   ret = request_firmware(&fw, fw_lme, &udev->dev);
   if (ret == 0) {
    st->dvb_usb_lme2510_firmware = 130;
    break;
   }

  case 129:
   fw_lme = fw_c_s0194;
   ret = request_firmware(&fw, fw_lme, &udev->dev);
   if (ret == 0) {
    st->dvb_usb_lme2510_firmware = 129;
    break;
   }
   st->dvb_usb_lme2510_firmware = TUNER_DEFAULT;
   cold = 0;
   break;
  }
  break;
 case 0x22f0:
  fw_lme = fw_c_rs2000;
  st->dvb_usb_lme2510_firmware = TUNER_RS2000;
  break;
 default:
  fw_lme = fw_c_s7395;
 }

 release_firmware(fw);

 if (cold) {
  dvb_usb_lme2510_firmware = st->dvb_usb_lme2510_firmware;
  info("FRM Changing to %s firmware", fw_lme);
  lme_coldreset(d);
  return ((void*)0);
 }

 return fw_lme;
}
