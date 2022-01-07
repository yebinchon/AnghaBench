
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl {int dummy; } ;


 int LM3560_LED0 ;
 int lm3560_get_ctrl (struct v4l2_ctrl*,int ) ;

__attribute__((used)) static int lm3560_led0_get_ctrl(struct v4l2_ctrl *ctrl)
{
 return lm3560_get_ctrl(ctrl, LM3560_LED0);
}
