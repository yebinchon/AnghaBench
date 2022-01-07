
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct v4l2_subdev {int dummy; } ;


 int tvp514x_read_reg (struct v4l2_subdev*,int ) ;
 int v4l2_info (struct v4l2_subdev*,char*,int ,int ) ;

__attribute__((used)) static void dump_reg(struct v4l2_subdev *sd, u8 reg)
{
 u32 val;

 val = tvp514x_read_reg(sd, reg);
 v4l2_info(sd, "Reg(0x%.2X): 0x%.2X\n", reg, val);
}
