
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int entity; } ;
struct lm3646_flash {TYPE_1__ subdev_led; int ctrls_led; } ;
struct i2c_client {int dummy; } ;


 struct lm3646_flash* i2c_get_clientdata (struct i2c_client*) ;
 int media_entity_cleanup (int *) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_device_unregister_subdev (TYPE_1__*) ;

__attribute__((used)) static int lm3646_remove(struct i2c_client *client)
{
 struct lm3646_flash *flash = i2c_get_clientdata(client);

 v4l2_device_unregister_subdev(&flash->subdev_led);
 v4l2_ctrl_handler_free(&flash->ctrls_led);
 media_entity_cleanup(&flash->subdev_led.entity);

 return 0;
}
