
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ interlaced; } ;
struct TYPE_4__ {TYPE_1__ bt; } ;
struct vivid_dev {TYPE_2__ dv_timings_out; } ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;






 int V4L2_FIELD_NONE ;


 scalar_t__ vivid_is_hdmi_out (struct vivid_dev*) ;
 scalar_t__ vivid_is_svid_out (struct vivid_dev*) ;

__attribute__((used)) static enum v4l2_field vivid_field_out(struct vivid_dev *dev, enum v4l2_field field)
{
 if (vivid_is_svid_out(dev)) {
  switch (field) {
  case 130:
  case 131:
  case 128:
  case 129:
  case 133:
   return field;
  case 132:
  default:
   return 132;
  }
 }
 if (vivid_is_hdmi_out(dev))
  return dev->dv_timings_out.bt.interlaced ? 133 :
             V4L2_FIELD_NONE;
 return V4L2_FIELD_NONE;
}
