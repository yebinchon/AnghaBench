
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lm3560_flash {int * ctrls_led; TYPE_1__* subdev_led; int dev; } ;
struct i2c_client {int dummy; } ;
typedef enum lm3560_led_id { ____Placeholder_lm3560_led_id } lm3560_led_id ;
struct TYPE_4__ {int function; } ;
struct TYPE_3__ {TYPE_2__ entity; int name; int flags; } ;


 int MEDIA_ENT_F_FLASH ;
 int V4L2_SUBDEV_FL_HAS_DEVNODE ;
 int lm3560_init_controls (struct lm3560_flash*,int) ;
 int lm3560_ops ;
 int media_entity_pads_init (TYPE_2__*,int ,int *) ;
 int strscpy (int ,char*,int) ;
 struct i2c_client* to_i2c_client (int ) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_i2c_subdev_init (TYPE_1__*,struct i2c_client*,int *) ;

__attribute__((used)) static int lm3560_subdev_init(struct lm3560_flash *flash,
         enum lm3560_led_id led_no, char *led_name)
{
 struct i2c_client *client = to_i2c_client(flash->dev);
 int rval;

 v4l2_i2c_subdev_init(&flash->subdev_led[led_no], client, &lm3560_ops);
 flash->subdev_led[led_no].flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
 strscpy(flash->subdev_led[led_no].name, led_name,
  sizeof(flash->subdev_led[led_no].name));
 rval = lm3560_init_controls(flash, led_no);
 if (rval)
  goto err_out;
 rval = media_entity_pads_init(&flash->subdev_led[led_no].entity, 0, ((void*)0));
 if (rval < 0)
  goto err_out;
 flash->subdev_led[led_no].entity.function = MEDIA_ENT_F_FLASH;

 return rval;

err_out:
 v4l2_ctrl_handler_free(&flash->ctrls_led[led_no]);
 return rval;
}
