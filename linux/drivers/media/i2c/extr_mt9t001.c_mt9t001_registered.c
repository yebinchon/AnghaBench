
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct mt9t001 {int dummy; } ;
struct i2c_client {int addr; int dev; } ;
typedef scalar_t__ s32 ;


 int ENODEV ;
 scalar_t__ MT9T001_CHIP_ID ;
 int MT9T001_CHIP_VERSION ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,int ) ;
 int mt9t001_power_off (struct mt9t001*) ;
 int mt9t001_power_on (struct mt9t001*) ;
 scalar_t__ mt9t001_read (struct i2c_client*,int ) ;
 struct mt9t001* to_mt9t001 (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9t001_registered(struct v4l2_subdev *subdev)
{
 struct i2c_client *client = v4l2_get_subdevdata(subdev);
 struct mt9t001 *mt9t001 = to_mt9t001(subdev);
 s32 data;
 int ret;

 ret = mt9t001_power_on(mt9t001);
 if (ret < 0) {
  dev_err(&client->dev, "MT9T001 power up failed\n");
  return ret;
 }


 data = mt9t001_read(client, MT9T001_CHIP_VERSION);
 mt9t001_power_off(mt9t001);

 if (data != MT9T001_CHIP_ID) {
  dev_err(&client->dev,
   "MT9T001 not detected, wrong version 0x%04x\n", data);
  return -ENODEV;
 }

 dev_info(&client->dev, "MT9T001 detected at address 0x%02x\n",
   client->addr);

 return 0;
}
