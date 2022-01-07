
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ov8856 {int sd; } ;
struct i2c_client {int dev; } ;


 int ENXIO ;
 scalar_t__ OV8856_CHIP_ID ;
 int OV8856_REG_CHIP_ID ;
 int OV8856_REG_VALUE_24BIT ;
 int dev_err (int *,char*,scalar_t__,scalar_t__) ;
 int ov8856_read_reg (struct ov8856*,int ,int ,scalar_t__*) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int ov8856_identify_module(struct ov8856 *ov8856)
{
 struct i2c_client *client = v4l2_get_subdevdata(&ov8856->sd);
 int ret;
 u32 val;

 ret = ov8856_read_reg(ov8856, OV8856_REG_CHIP_ID,
         OV8856_REG_VALUE_24BIT, &val);
 if (ret)
  return ret;

 if (val != OV8856_CHIP_ID) {
  dev_err(&client->dev, "chip id mismatch: %x!=%x",
   OV8856_CHIP_ID, val);
  return -ENXIO;
 }

 return 0;
}
