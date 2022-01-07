
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_ctrl {scalar_t__ minimum; scalar_t__ step; } ;
typedef int s32 ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;



__attribute__((used)) static enum led_brightness __intensity_to_led_brightness(
     struct v4l2_ctrl *ctrl, s32 intensity)
{
 intensity -= ctrl->minimum;
 intensity /= (u32) ctrl->step;







 if (ctrl->minimum)
  ++intensity;

 return intensity;
}
