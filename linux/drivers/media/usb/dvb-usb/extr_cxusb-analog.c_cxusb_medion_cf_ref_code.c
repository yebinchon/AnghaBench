
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_device {int dummy; } ;
struct cxusb_bt656_params {scalar_t__ fmode; } ;


 scalar_t__ LINE_SAMPLES ;
 scalar_t__ START_SEARCH ;
 scalar_t__ VBI_SAMPLES ;
 int cxusb_medion_cf_refc_line_smpl (struct dvb_usb_device*,struct cxusb_bt656_params*,int,unsigned int,unsigned char*) ;
 int cxusb_medion_cf_refc_start_sch (struct dvb_usb_device*,struct cxusb_bt656_params*,int,unsigned char*) ;
 int cxusb_medion_cf_refc_vbi_smpl (struct dvb_usb_device*,struct cxusb_bt656_params*,unsigned char*) ;

__attribute__((used)) static bool cxusb_medion_cf_ref_code(struct dvb_usb_device *dvbdev,
         struct cxusb_bt656_params *bt656,
         bool firstfield,
         unsigned int maxlines,
         unsigned int maxlinesamples,
         unsigned char buf[4])
{
 if (bt656->fmode == START_SEARCH) {
  cxusb_medion_cf_refc_start_sch(dvbdev, bt656, firstfield, buf);
 } else if (bt656->fmode == LINE_SAMPLES) {
  cxusb_medion_cf_refc_line_smpl(dvbdev, bt656, firstfield,
            maxlinesamples, buf);
  return 0;
 } else if (bt656->fmode == VBI_SAMPLES) {
  cxusb_medion_cf_refc_vbi_smpl(dvbdev, bt656, buf);
  return 0;
 }

 return 1;
}
