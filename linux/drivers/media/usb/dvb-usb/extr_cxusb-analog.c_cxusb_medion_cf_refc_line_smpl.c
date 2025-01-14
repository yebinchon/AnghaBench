
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_device {int dummy; } ;
struct cxusb_bt656_params {unsigned int linesamples; int line; int fmode; scalar_t__ buf; int pos; } ;


 int BT656 ;
 unsigned char CXUSB_BT656_SEAV_MASK ;
 unsigned char CXUSB_BT656_SEAV_SAV ;
 int START_SEARCH ;
 int cxusb_vprintk (struct dvb_usb_device*,int ,char*,char,int ,...) ;
 int memset (scalar_t__,int ,unsigned int) ;

__attribute__((used)) static void cxusb_medion_cf_refc_line_smpl(struct dvb_usb_device *dvbdev,
        struct cxusb_bt656_params *bt656,
        bool firstfield,
        unsigned int maxlinesamples,
        unsigned char buf[4])
{
 bool sav_code = (buf[3] & CXUSB_BT656_SEAV_MASK) ==
  CXUSB_BT656_SEAV_SAV;
 unsigned int remsamples;

 if (sav_code)
  cxusb_vprintk(dvbdev, BT656,
         "SAV in line samples @ line %u, pos %u\n",
         bt656->line, bt656->pos);

 remsamples = maxlinesamples - bt656->linesamples;
 if (bt656->buf && remsamples > 0) {
  memset(bt656->buf, 0, remsamples);
  bt656->buf += remsamples;

  cxusb_vprintk(dvbdev, BT656,
         "field %c line %u %u samples still remaining (of %u)\n",
         firstfield ? '1' : '2', bt656->line, remsamples,
         maxlinesamples);
 }

 bt656->fmode = START_SEARCH;
 bt656->line++;
}
