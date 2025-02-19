
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct i2c_regval {scalar_t__ addr; int val; } ;


 scalar_t__ REG_TERM ;
 int cam_i2c_write (struct v4l2_subdev*,scalar_t__,int ) ;

__attribute__((used)) static inline int noon010_bulk_write_reg(struct v4l2_subdev *sd,
      const struct i2c_regval *msg)
{
 while (msg->addr != REG_TERM) {
  int ret = cam_i2c_write(sd, msg->addr, msg->val);

  if (ret)
   return ret;
  msg++;
 }
 return 0;
}
