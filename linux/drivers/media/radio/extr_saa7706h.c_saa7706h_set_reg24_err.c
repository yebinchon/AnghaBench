
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct v4l2_subdev {int dummy; } ;


 int saa7706h_set_reg24 (struct v4l2_subdev*,int ,int ) ;

__attribute__((used)) static int saa7706h_set_reg24_err(struct v4l2_subdev *sd, u16 reg, u32 val,
 int *err)
{
 return *err ? *err : saa7706h_set_reg24(sd, reg, val);
}
