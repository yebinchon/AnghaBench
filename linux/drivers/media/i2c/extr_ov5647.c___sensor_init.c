
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int OV5647_SW_STANDBY ;
 int dev_err (int *,char*) ;
 int ov5647_640x480 ;
 int ov5647_read (struct v4l2_subdev*,int ,int*) ;
 int ov5647_set_virtual_channel (struct v4l2_subdev*,int ) ;
 int ov5647_stream_off (struct v4l2_subdev*) ;
 int ov5647_write (struct v4l2_subdev*,int ,int) ;
 int ov5647_write_array (struct v4l2_subdev*,int ,int ) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int __sensor_init(struct v4l2_subdev *sd)
{
 int ret;
 u8 resetval, rdval;
 struct i2c_client *client = v4l2_get_subdevdata(sd);

 ret = ov5647_read(sd, OV5647_SW_STANDBY, &rdval);
 if (ret < 0)
  return ret;

 ret = ov5647_write_array(sd, ov5647_640x480,
     ARRAY_SIZE(ov5647_640x480));
 if (ret < 0) {
  dev_err(&client->dev, "write sensor default regs error\n");
  return ret;
 }

 ret = ov5647_set_virtual_channel(sd, 0);
 if (ret < 0)
  return ret;

 ret = ov5647_read(sd, OV5647_SW_STANDBY, &resetval);
 if (ret < 0)
  return ret;

 if (!(resetval & 0x01)) {
  dev_err(&client->dev, "Device was in SW standby");
  ret = ov5647_write(sd, OV5647_SW_STANDBY, 0x01);
  if (ret < 0)
   return ret;
 }




 return ov5647_stream_off(sd);
}
