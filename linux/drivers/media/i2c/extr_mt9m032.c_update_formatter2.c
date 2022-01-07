
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mt9m032 {int subdev; } ;
struct i2c_client {int dummy; } ;


 int MT9M032_FORMATTER2 ;
 int MT9M032_FORMATTER2_DOUT_EN ;
 int MT9M032_FORMATTER2_PIXCLK_EN ;
 int mt9m032_write (struct i2c_client*,int ,int) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int update_formatter2(struct mt9m032 *sensor, bool streaming)
{
 struct i2c_client *client = v4l2_get_subdevdata(&sensor->subdev);
 u16 reg_val = MT9M032_FORMATTER2_DOUT_EN
        | 0x0070;


 if (streaming)
  reg_val |= MT9M032_FORMATTER2_PIXCLK_EN;

 return mt9m032_write(client, MT9M032_FORMATTER2, reg_val);
}
