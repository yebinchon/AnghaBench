
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct regval_list {int data; int addr; } ;


 int ov5647_write (struct v4l2_subdev*,int ,int ) ;

__attribute__((used)) static int ov5647_write_array(struct v4l2_subdev *sd,
    struct regval_list *regs, int array_size)
{
 int i, ret;

 for (i = 0; i < array_size; i++) {
  ret = ov5647_write(sd, regs[i].addr, regs[i].data);
  if (ret < 0)
   return ret;
 }

 return 0;
}
