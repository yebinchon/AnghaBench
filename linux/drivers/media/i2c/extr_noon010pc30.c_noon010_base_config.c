
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;


 int noon010_base_regs ;
 int noon010_bulk_write_reg (struct v4l2_subdev*,int ) ;
 int noon010_set_flip (struct v4l2_subdev*,int,int ) ;
 int noon010_set_params (struct v4l2_subdev*) ;

__attribute__((used)) static int noon010_base_config(struct v4l2_subdev *sd)
{
 int ret = noon010_bulk_write_reg(sd, noon010_base_regs);
 if (!ret)
  ret = noon010_set_params(sd);
 if (!ret)
  ret = noon010_set_flip(sd, 1, 0);

 return ret;
}
