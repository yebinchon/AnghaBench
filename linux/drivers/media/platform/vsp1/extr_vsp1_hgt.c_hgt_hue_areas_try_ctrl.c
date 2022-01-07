
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__* p_u8; } ;
struct v4l2_ctrl {TYPE_1__ p_new; } ;


 int EINVAL ;
 int HGT_NUM_HUE_AREAS ;

__attribute__((used)) static int hgt_hue_areas_try_ctrl(struct v4l2_ctrl *ctrl)
{
 const u8 *values = ctrl->p_new.p_u8;
 unsigned int i;
 for (i = 1; i < (HGT_NUM_HUE_AREAS * 2) - 1; ++i) {
  if (values[i] > values[i+1])
   return -EINVAL;
 }


 if (values[0] > values[1] && values[11] > values[0])
  return -EINVAL;

 return 0;
}
