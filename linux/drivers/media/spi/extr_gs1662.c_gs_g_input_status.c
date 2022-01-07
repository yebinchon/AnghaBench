
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct v4l2_subdev {int dummy; } ;
struct gs {int pdev; } ;


 int MASK_H_LOCK ;
 int MASK_STD_LOCK ;
 int MASK_V_LOCK ;
 scalar_t__ REG_LINES_PER_FRAME ;
 scalar_t__ REG_STATUS ;
 int V4L2_IN_ST_NO_H_LOCK ;
 int V4L2_IN_ST_NO_POWER ;
 int V4L2_IN_ST_NO_SIGNAL ;
 int V4L2_IN_ST_NO_STD_LOCK ;
 int V4L2_IN_ST_NO_V_LOCK ;
 int gs_read_register (int ,scalar_t__,int*) ;
 struct gs* to_gs (struct v4l2_subdev*) ;

__attribute__((used)) static int gs_g_input_status(struct v4l2_subdev *sd, u32 *status)
{
 struct gs *gs = to_gs(sd);
 u16 reg_value, i;
 int ret;





 for (i = 0; i < 4; i++) {
  ret = gs_read_register(gs->pdev,
           REG_LINES_PER_FRAME + i, &reg_value);
  if (reg_value)
   break;
  if (ret) {
   *status = V4L2_IN_ST_NO_POWER;
   return ret;
  }
 }


 if (i >= 4)
  *status |= V4L2_IN_ST_NO_SIGNAL;

 ret = gs_read_register(gs->pdev, REG_STATUS, &reg_value);
 if (!(reg_value & MASK_H_LOCK))
  *status |= V4L2_IN_ST_NO_H_LOCK;
 if (!(reg_value & MASK_V_LOCK))
  *status |= V4L2_IN_ST_NO_V_LOCK;
 if (!(reg_value & MASK_STD_LOCK))
  *status |= V4L2_IN_ST_NO_STD_LOCK;

 return ret;
}
