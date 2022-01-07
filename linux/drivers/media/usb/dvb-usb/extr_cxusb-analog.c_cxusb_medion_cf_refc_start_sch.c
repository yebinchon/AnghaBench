
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_device {int dummy; } ;
struct cxusb_bt656_params {int fmode; int pos; scalar_t__ linesamples; } ;


 int BT656 ;
 unsigned char CXUSB_BT656_FIELD_1 ;
 unsigned char CXUSB_BT656_FIELD_MASK ;
 unsigned char CXUSB_BT656_SEAV_MASK ;
 unsigned char CXUSB_BT656_SEAV_SAV ;
 unsigned char CXUSB_BT656_VBI_MASK ;
 unsigned char CXUSB_BT656_VBI_ON ;
 int LINE_SAMPLES ;
 int VBI_SAMPLES ;
 int cxusb_vprintk (struct dvb_usb_device*,int ,char*,int ) ;

__attribute__((used)) static void cxusb_medion_cf_refc_start_sch(struct dvb_usb_device *dvbdev,
        struct cxusb_bt656_params *bt656,
        bool firstfield,
        unsigned char buf[4])
{
 bool firstfield_code = (buf[3] & CXUSB_BT656_FIELD_MASK) ==
  CXUSB_BT656_FIELD_1;
 bool sav_code = (buf[3] & CXUSB_BT656_SEAV_MASK) ==
  CXUSB_BT656_SEAV_SAV;
 bool vbi_code = (buf[3] & CXUSB_BT656_VBI_MASK) ==
  CXUSB_BT656_VBI_ON;

 if (!sav_code || firstfield != firstfield_code)
  return;

 if (!vbi_code) {
  cxusb_vprintk(dvbdev, BT656, "line start @ pos %u\n",
         bt656->pos);

  bt656->linesamples = 0;
  bt656->fmode = LINE_SAMPLES;
 } else {
  cxusb_vprintk(dvbdev, BT656, "VBI start @ pos %u\n",
         bt656->pos);

  bt656->fmode = VBI_SAMPLES;
 }
}
