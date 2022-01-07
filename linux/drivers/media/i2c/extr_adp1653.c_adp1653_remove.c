
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int entity; } ;
struct adp1653_flash {TYPE_1__ subdev; int ctrls; } ;


 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int media_entity_cleanup (int *) ;
 struct adp1653_flash* to_adp1653_flash (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_device_unregister_subdev (TYPE_1__*) ;

__attribute__((used)) static int adp1653_remove(struct i2c_client *client)
{
 struct v4l2_subdev *subdev = i2c_get_clientdata(client);
 struct adp1653_flash *flash = to_adp1653_flash(subdev);

 v4l2_device_unregister_subdev(&flash->subdev);
 v4l2_ctrl_handler_free(&flash->ctrls);
 media_entity_cleanup(&flash->subdev.entity);

 return 0;
}
