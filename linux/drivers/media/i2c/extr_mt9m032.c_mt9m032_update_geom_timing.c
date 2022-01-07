
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ top; scalar_t__ left; scalar_t__ height; scalar_t__ width; } ;
struct mt9m032 {TYPE_1__ crop; int subdev; } ;
struct i2c_client {int dummy; } ;


 int MT9M032_COLUMN_SIZE ;
 int MT9M032_COLUMN_START ;
 int MT9M032_ROW_SIZE ;
 int MT9M032_ROW_START ;
 int mt9m032_update_timing (struct mt9m032*,int *) ;
 int mt9m032_write (struct i2c_client*,int ,scalar_t__) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int mt9m032_update_geom_timing(struct mt9m032 *sensor)
{
 struct i2c_client *client = v4l2_get_subdevdata(&sensor->subdev);
 int ret;

 ret = mt9m032_write(client, MT9M032_COLUMN_SIZE,
       sensor->crop.width - 1);
 if (!ret)
  ret = mt9m032_write(client, MT9M032_ROW_SIZE,
        sensor->crop.height - 1);
 if (!ret)
  ret = mt9m032_write(client, MT9M032_COLUMN_START,
        sensor->crop.left);
 if (!ret)
  ret = mt9m032_write(client, MT9M032_ROW_START,
        sensor->crop.top);
 if (!ret)
  ret = mt9m032_update_timing(sensor, ((void*)0));
 return ret;
}
