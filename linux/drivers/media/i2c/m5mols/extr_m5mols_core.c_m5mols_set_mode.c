
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct v4l2_subdev {int dummy; } ;
struct m5mols_info {scalar_t__ mode; struct v4l2_subdev sd; } ;


 int EINVAL ;



 int SYSTEM_SYSMODE ;
 int m5mols_read_u8 (struct v4l2_subdev*,int ,scalar_t__*) ;
 int m5mols_reg_mode (struct v4l2_subdev*,scalar_t__ const) ;
 int v4l2_warn (struct v4l2_subdev*,char*,scalar_t__) ;

int m5mols_set_mode(struct m5mols_info *info, u8 mode)
{
 struct v4l2_subdev *sd = &info->sd;
 int ret = -EINVAL;
 u8 reg;

 if (mode < 128 || mode > 130)
  return ret;

 ret = m5mols_read_u8(sd, SYSTEM_SYSMODE, &reg);
 if (ret || reg == mode)
  return ret;

 switch (reg) {
 case 128:
  ret = m5mols_reg_mode(sd, 129);
  if (mode == 129)
   break;
  if (!ret)
   ret = m5mols_reg_mode(sd, 130);
  break;

 case 129:
  if (mode == 128) {
   ret = m5mols_reg_mode(sd, 128);
   break;
  }

  ret = m5mols_reg_mode(sd, 130);
  break;

 case 130:
  ret = m5mols_reg_mode(sd, 129);
  if (mode == 129)
   break;
  if (!ret)
   ret = m5mols_reg_mode(sd, 128);
  break;

 default:
  v4l2_warn(sd, "Wrong mode: %d\n", mode);
 }

 if (!ret)
  info->mode = mode;

 return ret;
}
