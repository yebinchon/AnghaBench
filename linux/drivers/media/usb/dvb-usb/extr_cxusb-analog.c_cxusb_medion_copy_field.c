
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_device {int dummy; } ;
struct cxusb_medion_auxbuf {int dummy; } ;
struct cxusb_bt656_params {unsigned int line; scalar_t__ pos; } ;


 int BT656 ;
 unsigned char* CXUSB_BT656_PREAMBLE ;
 int cxusb_auxbuf_copy (struct cxusb_medion_auxbuf*,scalar_t__,unsigned char*,int) ;
 scalar_t__ cxusb_medion_cf_ref_code (struct dvb_usb_device*,struct cxusb_bt656_params*,int,unsigned int,unsigned int,unsigned char*) ;
 scalar_t__ cxusb_medion_cf_refc_fld_chg (struct dvb_usb_device*,struct cxusb_bt656_params*,int,unsigned int,unsigned int,unsigned char*) ;
 int cxusb_medion_copy_samples (struct dvb_usb_device*,struct cxusb_medion_auxbuf*,struct cxusb_bt656_params*,unsigned int,unsigned char) ;
 int cxusb_vprintk (struct dvb_usb_device*,int ,char*,scalar_t__,unsigned int) ;

__attribute__((used)) static bool cxusb_medion_copy_field(struct dvb_usb_device *dvbdev,
        struct cxusb_medion_auxbuf *auxbuf,
        struct cxusb_bt656_params *bt656,
        bool firstfield,
        unsigned int maxlines,
        unsigned int maxlinesmpls)
{
 while (bt656->line < maxlines) {
  unsigned char val;

  if (!cxusb_auxbuf_copy(auxbuf, bt656->pos, &val, 1))
   break;

  if (val == CXUSB_BT656_PREAMBLE[0]) {
   unsigned char buf[4];

   buf[0] = val;
   if (!cxusb_auxbuf_copy(auxbuf, bt656->pos + 1,
            buf + 1, 3))
    break;

   if (buf[1] == CXUSB_BT656_PREAMBLE[1] &&
       buf[2] == CXUSB_BT656_PREAMBLE[2]) {




    if (cxusb_medion_cf_refc_fld_chg(dvbdev,
         bt656,
         firstfield,
         maxlines,
         maxlinesmpls,
         buf))
     return 1;

    if (cxusb_medion_cf_ref_code(dvbdev, bt656,
            firstfield,
            maxlines,
            maxlinesmpls,
            buf))
     bt656->pos += 4;

    continue;
   }
  }

  if (!cxusb_medion_copy_samples(dvbdev, auxbuf, bt656,
            maxlinesmpls, val))
   break;
 }

 if (bt656->line < maxlines) {
  cxusb_vprintk(dvbdev, BT656,
         "end of buffer pos = %u, line = %u\n",
         bt656->pos, bt656->line);
  return 0;
 }

 return 1;
}
