
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dev; } ;


 int ENODEV ;
 int OV5647_REG_CHIPID_H ;
 int OV5647_REG_CHIPID_L ;
 int OV5647_SW_RESET ;
 int dev_err (int *,char*,int) ;
 int ov5647_read (struct v4l2_subdev*,int ,int*) ;
 int ov5647_write (struct v4l2_subdev*,int ,int) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ov5647_detect(struct v4l2_subdev *sd)
{
 u8 read;
 int ret;
 struct i2c_client *client = v4l2_get_subdevdata(sd);

 ret = ov5647_write(sd, OV5647_SW_RESET, 0x01);
 if (ret < 0)
  return ret;

 ret = ov5647_read(sd, OV5647_REG_CHIPID_H, &read);
 if (ret < 0)
  return ret;

 if (read != 0x56) {
  dev_err(&client->dev, "ID High expected 0x56 got %x", read);
  return -ENODEV;
 }

 ret = ov5647_read(sd, OV5647_REG_CHIPID_L, &read);
 if (ret < 0)
  return ret;

 if (read != 0x47) {
  dev_err(&client->dev, "ID Low expected 0x47 got %x", read);
  return -ENODEV;
 }

 return ov5647_write(sd, OV5647_SW_RESET, 0x00);
}
