
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt9m032 {int subdev; } ;
struct i2c_client {int dummy; } ;


 int MT9M032_READ_MODE2 ;
 int MT9M032_READ_MODE2_HFLIP_SHIFT ;
 int MT9M032_READ_MODE2_ROW_BLC ;
 int MT9M032_READ_MODE2_VFLIP_SHIFT ;
 int mt9m032_write (struct i2c_client*,int ,int) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int update_read_mode2(struct mt9m032 *sensor, bool vflip, bool hflip)
{
 struct i2c_client *client = v4l2_get_subdevdata(&sensor->subdev);
 int reg_val = (vflip << MT9M032_READ_MODE2_VFLIP_SHIFT)
      | (hflip << MT9M032_READ_MODE2_HFLIP_SHIFT)
      | MT9M032_READ_MODE2_ROW_BLC
      | 0x0007;

 return mt9m032_write(client, MT9M032_READ_MODE2, reg_val);
}
