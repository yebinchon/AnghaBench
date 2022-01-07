
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;


 int AHB_MSB_ADDR_PTR ;
 int GEN_REG_OFFSH ;
 int s5k4ecgx_i2c_write (struct i2c_client*,int,int) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int s5k4ecgx_set_ahb_address(struct v4l2_subdev *sd)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 int ret;


 ret = s5k4ecgx_i2c_write(client, AHB_MSB_ADDR_PTR, GEN_REG_OFFSH);
 if (ret < 0)
  return ret;





 ret = s5k4ecgx_i2c_write(client, 0x0010, 0x0001);
 if (ret < 0)
  return ret;

 ret = s5k4ecgx_i2c_write(client, 0x1030, 0x0000);
 if (ret < 0)
  return ret;

 return s5k4ecgx_i2c_write(client, 0x0014, 0x0001);
}
