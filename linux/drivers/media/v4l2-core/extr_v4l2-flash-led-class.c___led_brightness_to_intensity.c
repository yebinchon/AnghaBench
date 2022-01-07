
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl {scalar_t__ id; int step; scalar_t__ minimum; } ;
typedef scalar_t__ s32 ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 scalar_t__ V4L2_CID_FLASH_INDICATOR_INTENSITY ;

__attribute__((used)) static s32 __led_brightness_to_intensity(struct v4l2_ctrl *ctrl,
      enum led_brightness brightness)
{
 if (ctrl->id != V4L2_CID_FLASH_INDICATOR_INTENSITY)
  --brightness;

 return (brightness * ctrl->step) + ctrl->minimum;
}
