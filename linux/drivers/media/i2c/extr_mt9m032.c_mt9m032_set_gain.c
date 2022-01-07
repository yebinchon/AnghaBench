
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mt9m032 {int subdev; } ;
struct i2c_client {int dummy; } ;
typedef int s32 ;


 int MT9M032_GAIN_ALL ;
 int MT9M032_GAIN_AMUL_SHIFT ;
 int MT9M032_GAIN_ANALOG_MASK ;
 int MT9M032_GAIN_DIGITAL_MASK ;
 int MT9M032_GAIN_DIGITAL_SHIFT ;
 int mt9m032_write (struct i2c_client*,int ,int) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int mt9m032_set_gain(struct mt9m032 *sensor, s32 val)
{
 struct i2c_client *client = v4l2_get_subdevdata(&sensor->subdev);
 int digital_gain_val;
 int analog_mul;
 int analog_gain_val;
 u16 reg_val;

 digital_gain_val = 51;

 if (val < 63) {
  analog_mul = 0;
  analog_gain_val = val;
 } else {
  analog_mul = 1;
  analog_gain_val = val / 2;
 }




 reg_val = ((digital_gain_val & MT9M032_GAIN_DIGITAL_MASK)
     << MT9M032_GAIN_DIGITAL_SHIFT)
  | ((analog_mul & 1) << MT9M032_GAIN_AMUL_SHIFT)
  | (analog_gain_val & MT9M032_GAIN_ANALOG_MASK);

 return mt9m032_write(client, MT9M032_GAIN_ALL, reg_val);
}
