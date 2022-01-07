
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_prev_device {int dummy; } ;
struct isp_device {int revision; } ;





 unsigned int PREV_MAX_OUT_WIDTH_REV_1 ;
 unsigned int PREV_MAX_OUT_WIDTH_REV_15 ;
 unsigned int PREV_MAX_OUT_WIDTH_REV_2 ;
 struct isp_device* to_isp_device (struct isp_prev_device*) ;

__attribute__((used)) static unsigned int preview_max_out_width(struct isp_prev_device *prev)
{
 struct isp_device *isp = to_isp_device(prev);

 switch (isp->revision) {
 case 129:
  return PREV_MAX_OUT_WIDTH_REV_1;

 case 128:
 default:
  return PREV_MAX_OUT_WIDTH_REV_2;

 case 130:
  return PREV_MAX_OUT_WIDTH_REV_15;
 }
}
