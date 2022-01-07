
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ov5675 {int sd; } ;
struct i2c_client {int dev; } ;


 int ENXIO ;
 scalar_t__ OV5675_CHIP_ID ;
 int OV5675_REG_CHIP_ID ;
 int OV5675_REG_VALUE_24BIT ;
 int dev_err (int *,char*,scalar_t__,scalar_t__) ;
 int ov5675_read_reg (struct ov5675*,int ,int ,scalar_t__*) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int ov5675_identify_module(struct ov5675 *ov5675)
{
 struct i2c_client *client = v4l2_get_subdevdata(&ov5675->sd);
 int ret;
 u32 val;

 ret = ov5675_read_reg(ov5675, OV5675_REG_CHIP_ID,
         OV5675_REG_VALUE_24BIT, &val);
 if (ret)
  return ret;

 if (val != OV5675_CHIP_ID) {
  dev_err(&client->dev, "chip id mismatch: %x!=%x",
   OV5675_CHIP_ID, val);
  return -ENXIO;
 }

 return 0;
}
