
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov8856 {int sd; } ;
struct i2c_client {int dev; } ;


 int OV8856_MODE_STANDBY ;
 int OV8856_REG_MODE_SELECT ;
 int OV8856_REG_VALUE_08BIT ;
 int dev_err (int *,char*) ;
 scalar_t__ ov8856_write_reg (struct ov8856*,int ,int ,int ) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static void ov8856_stop_streaming(struct ov8856 *ov8856)
{
 struct i2c_client *client = v4l2_get_subdevdata(&ov8856->sd);

 if (ov8856_write_reg(ov8856, OV8856_REG_MODE_SELECT,
        OV8856_REG_VALUE_08BIT, OV8856_MODE_STANDBY))
  dev_err(&client->dev, "failed to set stream");
}
