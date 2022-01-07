
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int entity; } ;
struct tvp7002 {int hdl; TYPE_1__ sd; } ;
struct i2c_client {int addr; } ;


 int debug ;
 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int media_entity_cleanup (int *) ;
 struct tvp7002* to_tvp7002 (struct v4l2_subdev*) ;
 int v4l2_async_unregister_subdev (TYPE_1__*) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int ) ;

__attribute__((used)) static int tvp7002_remove(struct i2c_client *c)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(c);
 struct tvp7002 *device = to_tvp7002(sd);

 v4l2_dbg(1, debug, sd, "Removing tvp7002 adapter"
    "on address 0x%x\n", c->addr);
 v4l2_async_unregister_subdev(&device->sd);



 v4l2_ctrl_handler_free(&device->hdl);
 return 0;
}
