
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dev; } ;
struct tvp5150 {int hdl; } ;
struct i2c_client {int addr; } ;


 int debug ;
 int dev_dbg_lvl (int ,int,int ,char*,int) ;
 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 struct tvp5150* to_tvp5150 (struct v4l2_subdev*) ;
 int v4l2_async_unregister_subdev (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_free (int *) ;

__attribute__((used)) static int tvp5150_remove(struct i2c_client *c)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(c);
 struct tvp5150 *decoder = to_tvp5150(sd);

 dev_dbg_lvl(sd->dev, 1, debug,
  "tvp5150.c: removing tvp5150 adapter on address 0x%x\n",
  c->addr << 1);

 v4l2_async_unregister_subdev(sd);
 v4l2_ctrl_handler_free(&decoder->hdl);
 return 0;
}
