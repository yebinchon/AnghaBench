
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct et8ek8_sensor {int subdev; } ;


 int ET8EK8_REG_8BIT ;
 int et8ek8_i2c_write_reg (struct i2c_client*,int ,int,int) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int et8ek8_stream_on(struct et8ek8_sensor *sensor)
{
 struct i2c_client *client = v4l2_get_subdevdata(&sensor->subdev);

 return et8ek8_i2c_write_reg(client, ET8EK8_REG_8BIT, 0x1252, 0xb0);
}
