
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lm3560_flash {TYPE_1__* subdev_led; int * ctrls_led; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int entity; } ;


 unsigned int LM3560_LED0 ;
 unsigned int LM3560_LED_MAX ;
 struct lm3560_flash* i2c_get_clientdata (struct i2c_client*) ;
 int media_entity_cleanup (int *) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_device_unregister_subdev (TYPE_1__*) ;

__attribute__((used)) static int lm3560_remove(struct i2c_client *client)
{
 struct lm3560_flash *flash = i2c_get_clientdata(client);
 unsigned int i;

 for (i = LM3560_LED0; i < LM3560_LED_MAX; i++) {
  v4l2_device_unregister_subdev(&flash->subdev_led[i]);
  v4l2_ctrl_handler_free(&flash->ctrls_led[i]);
  media_entity_cleanup(&flash->subdev_led[i].entity);
 }

 return 0;
}
