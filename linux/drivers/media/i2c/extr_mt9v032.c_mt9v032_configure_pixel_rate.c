
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt9v032 {int sysclk; int hratio; int pixel_rate; int subdev; } ;
struct i2c_client {int dev; } ;


 int dev_warn (int *,char*,int) ;
 int v4l2_ctrl_s_ctrl_int64 (int ,int) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static void mt9v032_configure_pixel_rate(struct mt9v032 *mt9v032)
{
 struct i2c_client *client = v4l2_get_subdevdata(&mt9v032->subdev);
 int ret;

 ret = v4l2_ctrl_s_ctrl_int64(mt9v032->pixel_rate,
         mt9v032->sysclk / mt9v032->hratio);
 if (ret < 0)
  dev_warn(&client->dev, "failed to set pixel rate (%d)\n", ret);
}
