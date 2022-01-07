
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_dv_timings {int dummy; } ;
struct gs {int pdev; scalar_t__ enabled; } ;


 int EBUSY ;
 int ENOLCK ;
 int ENOLINK ;
 int ERANGE ;
 int MASK_H_LOCK ;
 int MASK_STD_LOCK ;
 int MASK_V_LOCK ;
 scalar_t__ REG_LINES_PER_FRAME ;
 scalar_t__ REG_STATUS ;
 int gs_read_register (int ,scalar_t__,int*) ;
 int gs_status_format (int,struct v4l2_dv_timings*) ;
 struct gs* to_gs (struct v4l2_subdev*) ;

__attribute__((used)) static int gs_query_dv_timings(struct v4l2_subdev *sd,
   struct v4l2_dv_timings *timings)
{
 struct gs *gs = to_gs(sd);
 struct v4l2_dv_timings fmt;
 u16 reg_value, i;
 int ret;

 if (gs->enabled)
  return -EBUSY;





 for (i = 0; i < 4; i++) {
  gs_read_register(gs->pdev, REG_LINES_PER_FRAME + i, &reg_value);
  if (reg_value)
   break;
 }


 if (i >= 4)
  return -ENOLINK;

 gs_read_register(gs->pdev, REG_STATUS, &reg_value);
 if (!(reg_value & MASK_H_LOCK) || !(reg_value & MASK_V_LOCK))
  return -ENOLCK;
 if (!(reg_value & MASK_STD_LOCK))
  return -ERANGE;

 ret = gs_status_format(reg_value, &fmt);

 if (ret < 0)
  return ret;

 *timings = fmt;
 return 0;
}
