
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov5675 {int sd; } ;
struct i2c_client {int dev; } ;


 int OV5675_MODE_STANDBY ;
 int OV5675_REG_MODE_SELECT ;
 int OV5675_REG_VALUE_08BIT ;
 int dev_err (int *,char*) ;
 scalar_t__ ov5675_write_reg (struct ov5675*,int ,int ,int ) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static void ov5675_stop_streaming(struct ov5675 *ov5675)
{
 struct i2c_client *client = v4l2_get_subdevdata(&ov5675->sd);

 if (ov5675_write_reg(ov5675, OV5675_REG_MODE_SELECT,
        OV5675_REG_VALUE_08BIT, OV5675_MODE_STANDBY))
  dev_err(&client->dev, "failed to set stream");
}
