
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct mt9p031 {int dummy; } ;
struct i2c_client {int addr; int dev; } ;
typedef scalar_t__ s32 ;


 int ENODEV ;
 int MT9P031_CHIP_VERSION ;
 scalar_t__ MT9P031_CHIP_VERSION_VALUE ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,int ) ;
 int mt9p031_power_off (struct mt9p031*) ;
 int mt9p031_power_on (struct mt9p031*) ;
 scalar_t__ mt9p031_read (struct i2c_client*,int ) ;
 struct mt9p031* to_mt9p031 (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9p031_registered(struct v4l2_subdev *subdev)
{
 struct i2c_client *client = v4l2_get_subdevdata(subdev);
 struct mt9p031 *mt9p031 = to_mt9p031(subdev);
 s32 data;
 int ret;

 ret = mt9p031_power_on(mt9p031);
 if (ret < 0) {
  dev_err(&client->dev, "MT9P031 power up failed\n");
  return ret;
 }


 data = mt9p031_read(client, MT9P031_CHIP_VERSION);
 mt9p031_power_off(mt9p031);

 if (data != MT9P031_CHIP_VERSION_VALUE) {
  dev_err(&client->dev, "MT9P031 not detected, wrong version "
   "0x%04x\n", data);
  return -ENODEV;
 }

 dev_info(&client->dev, "MT9P031 detected at address 0x%02x\n",
   client->addr);

 return 0;
}
