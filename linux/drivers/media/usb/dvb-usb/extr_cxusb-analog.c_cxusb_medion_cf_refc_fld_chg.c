
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_device {int dummy; } ;
struct cxusb_bt656_params {unsigned int line; scalar_t__ fmode; unsigned int linesamples; scalar_t__ buf; } ;


 int BT656 ;
 unsigned char CXUSB_BT656_FIELD_1 ;
 unsigned char CXUSB_BT656_FIELD_MASK ;
 scalar_t__ LINE_SAMPLES ;
 int cxusb_vprintk (struct dvb_usb_device*,int ,char*,char,unsigned int,...) ;
 int memset (scalar_t__,int ,unsigned int) ;

__attribute__((used)) static bool cxusb_medion_cf_refc_fld_chg(struct dvb_usb_device *dvbdev,
      struct cxusb_bt656_params *bt656,
      bool firstfield,
      unsigned int maxlines,
      unsigned int maxlinesamples,
      unsigned char buf[4])
{
 bool firstfield_code = (buf[3] & CXUSB_BT656_FIELD_MASK) ==
  CXUSB_BT656_FIELD_1;
 unsigned int remlines;

 if (bt656->line == 0 || firstfield == firstfield_code)
  return 0;

 if (bt656->fmode == LINE_SAMPLES) {
  unsigned int remsamples = maxlinesamples -
   bt656->linesamples;

  cxusb_vprintk(dvbdev, BT656,
         "field %c after line %u field change\n",
         firstfield ? '1' : '2', bt656->line);

  if (bt656->buf && remsamples > 0) {
   memset(bt656->buf, 0, remsamples);
   bt656->buf += remsamples;

   cxusb_vprintk(dvbdev, BT656,
          "field %c line %u %u samples still remaining (of %u)\n",
          firstfield ? '1' : '2',
          bt656->line, remsamples,
          maxlinesamples);
  }

  bt656->line++;
 }

 remlines = maxlines - bt656->line;
 if (bt656->buf && remlines > 0) {
  memset(bt656->buf, 0, remlines * maxlinesamples);
  bt656->buf += remlines * maxlinesamples;

  cxusb_vprintk(dvbdev, BT656,
         "field %c %u lines still remaining (of %u)\n",
         firstfield ? '1' : '2', remlines,
         maxlines);
 }

 return 1;
}
