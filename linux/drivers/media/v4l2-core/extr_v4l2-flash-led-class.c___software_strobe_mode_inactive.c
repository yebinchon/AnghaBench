
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl {scalar_t__ val; } ;


 size_t LED_MODE ;
 size_t STROBE_SOURCE ;
 scalar_t__ V4L2_FLASH_LED_MODE_FLASH ;
 scalar_t__ V4L2_FLASH_STROBE_SOURCE_SOFTWARE ;

__attribute__((used)) static bool __software_strobe_mode_inactive(struct v4l2_ctrl **ctrls)
{
 return ((ctrls[LED_MODE]->val != V4L2_FLASH_LED_MODE_FLASH) ||
  (ctrls[STROBE_SOURCE] && (ctrls[STROBE_SOURCE]->val !=
    V4L2_FLASH_STROBE_SOURCE_SOFTWARE)));
}
