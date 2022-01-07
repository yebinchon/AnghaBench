
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct v4l2_subdev {int dummy; } ;
struct s5k6aa_regval {scalar_t__ addr; scalar_t__ val; } ;
struct i2c_client {int dummy; } ;


 int REG_CMDBUF0_ADDR ;
 int REG_CMDWR_ADDRL ;
 scalar_t__ S5K6AA_TERM ;
 int s5k6aa_i2c_write (struct i2c_client*,int ,scalar_t__) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int s5k6aa_write_array(struct v4l2_subdev *sd,
         const struct s5k6aa_regval *msg)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 u16 addr_incr = 0;
 int ret = 0;

 while (msg->addr != S5K6AA_TERM) {
  if (addr_incr != 2)
   ret = s5k6aa_i2c_write(client, REG_CMDWR_ADDRL,
            msg->addr);
  if (ret)
   break;
  ret = s5k6aa_i2c_write(client, REG_CMDBUF0_ADDR, msg->val);
  if (ret)
   break;

  addr_incr = (msg + 1)->addr - msg->addr;
  msg++;
 }

 return ret;
}
