
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct m5mols_info {int dummy; } ;


 int REG_INT_AF ;
 int SYSTEM_INT_ENABLE ;
 int SYSTEM_INT_FACTOR ;
 scalar_t__ is_available_af (struct m5mols_info*) ;
 int m5mols_read_u8 (struct v4l2_subdev*,int ,int*) ;
 int m5mols_write (struct v4l2_subdev*,int ,int) ;
 struct m5mols_info* to_m5mols (struct v4l2_subdev*) ;

int m5mols_enable_interrupt(struct v4l2_subdev *sd, u8 reg)
{
 struct m5mols_info *info = to_m5mols(sd);
 u8 mask = is_available_af(info) ? REG_INT_AF : 0;
 u8 dummy;
 int ret;

 ret = m5mols_read_u8(sd, SYSTEM_INT_FACTOR, &dummy);
 if (!ret)
  ret = m5mols_write(sd, SYSTEM_INT_ENABLE, reg & ~mask);
 return ret;
}
