
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vivid_dev {size_t input; TYPE_2__* dv_timings_cap; } ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;
struct TYPE_3__ {scalar_t__ interlaced; } ;
struct TYPE_4__ {TYPE_1__ bt; } ;







 int V4L2_FIELD_NONE ;



 scalar_t__ vivid_is_hdmi_cap (struct vivid_dev*) ;
 scalar_t__ vivid_is_sdtv_cap (struct vivid_dev*) ;

__attribute__((used)) static enum v4l2_field vivid_field_cap(struct vivid_dev *dev, enum v4l2_field field)
{
 if (vivid_is_sdtv_cap(dev)) {
  switch (field) {
  case 131:
  case 132:
  case 129:
  case 130:
  case 128:
  case 134:
  case 135:
   return field;
  case 133:
  default:
   return 133;
  }
 }
 if (vivid_is_hdmi_cap(dev))
  return dev->dv_timings_cap[dev->input].bt.interlaced ?
   135 : V4L2_FIELD_NONE;
 return V4L2_FIELD_NONE;
}
