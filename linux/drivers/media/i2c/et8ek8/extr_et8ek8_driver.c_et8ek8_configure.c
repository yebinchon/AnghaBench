
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dev; } ;
struct et8ek8_sensor {int ctrl_handler; TYPE_1__* current_reglist; struct v4l2_subdev subdev; } ;
struct TYPE_2__ {int regs; } ;


 int dev_err (int *,char*) ;
 int et8ek8_i2c_write_regs (struct i2c_client*,int ) ;
 int v4l2_ctrl_handler_setup (int *) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int et8ek8_configure(struct et8ek8_sensor *sensor)
{
 struct v4l2_subdev *subdev = &sensor->subdev;
 struct i2c_client *client = v4l2_get_subdevdata(subdev);
 int rval;

 rval = et8ek8_i2c_write_regs(client, sensor->current_reglist->regs);
 if (rval)
  goto fail;





 rval = v4l2_ctrl_handler_setup(&sensor->ctrl_handler);
 if (rval)
  goto fail;

 return 0;

fail:
 dev_err(&client->dev, "sensor configuration failed\n");

 return rval;
}
