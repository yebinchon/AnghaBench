
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_device {int dummy; } ;
struct cxusb_medion_auxbuf {int dummy; } ;
struct cxusb_bt656_params {scalar_t__ fmode; scalar_t__ line; int pos; } ;


 scalar_t__ LINE_SAMPLES ;
 scalar_t__ START_SEARCH ;
 int cxusb_medion_cs_line_smpl (struct cxusb_bt656_params*,unsigned int,unsigned char) ;
 int cxusb_medion_cs_start_sch (struct dvb_usb_device*,struct cxusb_medion_auxbuf*,struct cxusb_bt656_params*,unsigned int) ;

__attribute__((used)) static bool cxusb_medion_copy_samples(struct dvb_usb_device *dvbdev,
          struct cxusb_medion_auxbuf *auxbuf,
          struct cxusb_bt656_params *bt656,
          unsigned int maxlinesamples,
          unsigned char val)
{
 if (bt656->fmode == START_SEARCH && bt656->line > 0)
  return cxusb_medion_cs_start_sch(dvbdev, auxbuf, bt656,
       maxlinesamples);
 else if (bt656->fmode == LINE_SAMPLES)
  cxusb_medion_cs_line_smpl(bt656, maxlinesamples, val);
 else
  bt656->pos++;

 return 1;
}
