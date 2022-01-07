
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_11__ {TYPE_6__* ctrl_handler; int grp_id; int name; } ;
struct TYPE_12__ {char* name; } ;
struct TYPE_13__ {int error; } ;
struct ivtv {TYPE_3__ sd_gpio; TYPE_4__ v4l2_dev; TYPE_6__ hdl_gpio; TYPE_2__* card; } ;
struct TYPE_9__ {int direction; int initial_value; } ;
struct TYPE_10__ {int xceive_pin; TYPE_1__ gpio_init; } ;


 int IVTV_DEBUG_INFO (char*,int ,int ) ;
 int IVTV_HW_GPIO ;
 int IVTV_REG_GPIO_DIR ;
 int IVTV_REG_GPIO_OUT ;
 int V4L2_CID_AUDIO_MUTE ;
 int gpio_ctrl_ops ;
 int read_reg (int ) ;
 int snprintf (int ,int,char*,char*) ;
 int subdev_ops ;
 int v4l2_ctrl_handler_init (TYPE_6__*,int) ;
 int v4l2_ctrl_handler_setup (TYPE_6__*) ;
 int v4l2_ctrl_new_std (TYPE_6__*,int *,int ,int ,int,int,int ) ;
 int v4l2_device_register_subdev (TYPE_4__*,TYPE_3__*) ;
 int v4l2_subdev_init (TYPE_3__*,int *) ;
 int write_reg (int,int ) ;

int ivtv_gpio_init(struct ivtv *itv)
{
 u16 pin = 0;

 if (itv->card->xceive_pin)
  pin = 1 << itv->card->xceive_pin;

 if ((itv->card->gpio_init.direction | pin) == 0)
  return 0;

 IVTV_DEBUG_INFO("GPIO initial dir: %08x out: %08x\n",
     read_reg(IVTV_REG_GPIO_DIR), read_reg(IVTV_REG_GPIO_OUT));


 write_reg(itv->card->gpio_init.initial_value | pin, IVTV_REG_GPIO_OUT);
 write_reg(itv->card->gpio_init.direction | pin, IVTV_REG_GPIO_DIR);
 v4l2_subdev_init(&itv->sd_gpio, &subdev_ops);
 snprintf(itv->sd_gpio.name, sizeof(itv->sd_gpio.name), "%s-gpio", itv->v4l2_dev.name);
 itv->sd_gpio.grp_id = IVTV_HW_GPIO;
 v4l2_ctrl_handler_init(&itv->hdl_gpio, 1);
 v4l2_ctrl_new_std(&itv->hdl_gpio, &gpio_ctrl_ops,
   V4L2_CID_AUDIO_MUTE, 0, 1, 1, 0);
 if (itv->hdl_gpio.error)
  return itv->hdl_gpio.error;
 itv->sd_gpio.ctrl_handler = &itv->hdl_gpio;
 v4l2_ctrl_handler_setup(&itv->hdl_gpio);
 return v4l2_device_register_subdev(&itv->v4l2_dev, &itv->sd_gpio);
}
