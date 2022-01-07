
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;


 int ov7670_default_regs ;
 int ov7670_write_array (struct v4l2_subdev*,int ) ;

__attribute__((used)) static int ov7670_init(struct v4l2_subdev *sd, u32 val)
{
 return ov7670_write_array(sd, ov7670_default_regs);
}
