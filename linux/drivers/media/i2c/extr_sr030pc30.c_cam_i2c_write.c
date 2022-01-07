
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct sr030pc30_info {int dummy; } ;
struct i2c_client {int dummy; } ;


 int i2c_smbus_write_byte_data (struct i2c_client*,int,int) ;
 int set_i2c_page (struct sr030pc30_info*,struct i2c_client*,int) ;
 struct sr030pc30_info* to_sr030pc30 (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int cam_i2c_write(struct v4l2_subdev *sd, u32 reg_addr, u32 val)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct sr030pc30_info *info = to_sr030pc30(sd);

 int ret = set_i2c_page(info, client, reg_addr);
 if (!ret)
  ret = i2c_smbus_write_byte_data(
   client, reg_addr & 0xFF, val);
 return ret;
}
