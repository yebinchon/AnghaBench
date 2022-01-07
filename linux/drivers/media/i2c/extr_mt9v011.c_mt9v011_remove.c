
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct mt9v011 {int ctrls; } ;
struct i2c_client {int addr; } ;


 int debug ;
 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 struct mt9v011* to_mt9v011 (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int) ;
 int v4l2_device_unregister_subdev (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9v011_remove(struct i2c_client *c)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(c);
 struct mt9v011 *core = to_mt9v011(sd);

 v4l2_dbg(1, debug, sd,
  "mt9v011.c: removing mt9v011 adapter on address 0x%x\n",
  c->addr << 1);

 v4l2_device_unregister_subdev(sd);
 v4l2_ctrl_handler_free(&core->ctrls);

 return 0;
}
