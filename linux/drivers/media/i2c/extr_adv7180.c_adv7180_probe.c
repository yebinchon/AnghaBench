
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int function; } ;
struct v4l2_subdev {int flags; TYPE_1__ entity; } ;
struct i2c_device_id {scalar_t__ driver_data; } ;
struct i2c_client {scalar_t__ irq; TYPE_4__* adapter; int dev; int addr; } ;
struct TYPE_7__ {int flags; } ;
struct adv7180_state {scalar_t__ irq; int powered; int mutex; void* csi_client; void* vpp_client; TYPE_2__ pad; struct v4l2_subdev sd; scalar_t__ input; struct adv7180_chip_info* chip_info; int curr_norm; void* pwdn_gpio; int field; struct i2c_client* client; } ;
struct adv7180_chip_info {int flags; } ;
struct TYPE_8__ {int name; } ;


 int ADV7180_DEFAULT_CSI_I2C_ADDR ;
 int ADV7180_DEFAULT_VPP_I2C_ADDR ;
 int ADV7180_FLAG_I2P ;
 int ADV7180_FLAG_MIPI_CSI2 ;
 int ADV7180_FLAG_RESET_POWERED ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_HIGH ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 scalar_t__ IS_ERR (void*) ;
 int KBUILD_MODNAME ;
 int MEDIA_ENT_F_ATV_DECODER ;
 int MEDIA_PAD_FL_SOURCE ;
 int PTR_ERR (void*) ;
 int V4L2_FIELD_ALTERNATE ;
 int V4L2_STD_NTSC ;
 int V4L2_SUBDEV_FL_HAS_DEVNODE ;
 int V4L2_SUBDEV_FL_HAS_EVENTS ;
 int adv7180_exit_controls (struct adv7180_state*) ;
 int adv7180_init_controls (struct adv7180_state*) ;
 int adv7180_irq ;
 int adv7180_ops ;
 void* devm_gpiod_get_optional (int *,char*,int ) ;
 struct adv7180_state* devm_kzalloc (int *,int,int ) ;
 int free_irq (scalar_t__,struct adv7180_state*) ;
 int i2c_check_functionality (TYPE_4__*,int ) ;
 void* i2c_new_dummy_device (TYPE_4__*,int ) ;
 int i2c_unregister_device (void*) ;
 int init_device (struct adv7180_state*) ;
 int media_entity_cleanup (TYPE_1__*) ;
 int media_entity_pads_init (TYPE_1__*,int,TYPE_2__*) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int request_threaded_irq (scalar_t__,int *,int ,int,int ,struct adv7180_state*) ;
 int v4l2_async_register_subdev (struct v4l2_subdev*) ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;
 int v4l_err (struct i2c_client*,char*,int) ;
 int v4l_info (struct i2c_client*,char*,int ,int ) ;

__attribute__((used)) static int adv7180_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct adv7180_state *state;
 struct v4l2_subdev *sd;
 int ret;


 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -EIO;

 v4l_info(client, "chip found @ 0x%02x (%s)\n",
   client->addr, client->adapter->name);

 state = devm_kzalloc(&client->dev, sizeof(*state), GFP_KERNEL);
 if (state == ((void*)0))
  return -ENOMEM;

 state->client = client;
 state->field = V4L2_FIELD_ALTERNATE;
 state->chip_info = (struct adv7180_chip_info *)id->driver_data;

 state->pwdn_gpio = devm_gpiod_get_optional(&client->dev, "powerdown",
         GPIOD_OUT_HIGH);
 if (IS_ERR(state->pwdn_gpio)) {
  ret = PTR_ERR(state->pwdn_gpio);
  v4l_err(client, "request for power pin failed: %d\n", ret);
  return ret;
 }

 if (state->chip_info->flags & ADV7180_FLAG_MIPI_CSI2) {
  state->csi_client = i2c_new_dummy_device(client->adapter,
    ADV7180_DEFAULT_CSI_I2C_ADDR);
  if (IS_ERR(state->csi_client))
   return PTR_ERR(state->csi_client);
 }

 if (state->chip_info->flags & ADV7180_FLAG_I2P) {
  state->vpp_client = i2c_new_dummy_device(client->adapter,
    ADV7180_DEFAULT_VPP_I2C_ADDR);
  if (IS_ERR(state->vpp_client)) {
   ret = PTR_ERR(state->vpp_client);
   goto err_unregister_csi_client;
  }
 }

 state->irq = client->irq;
 mutex_init(&state->mutex);
 state->curr_norm = V4L2_STD_NTSC;
 if (state->chip_info->flags & ADV7180_FLAG_RESET_POWERED)
  state->powered = 1;
 else
  state->powered = 0;
 state->input = 0;
 sd = &state->sd;
 v4l2_i2c_subdev_init(sd, client, &adv7180_ops);
 sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE | V4L2_SUBDEV_FL_HAS_EVENTS;

 ret = adv7180_init_controls(state);
 if (ret)
  goto err_unregister_vpp_client;

 state->pad.flags = MEDIA_PAD_FL_SOURCE;
 sd->entity.function = MEDIA_ENT_F_ATV_DECODER;
 ret = media_entity_pads_init(&sd->entity, 1, &state->pad);
 if (ret)
  goto err_free_ctrl;

 ret = init_device(state);
 if (ret)
  goto err_media_entity_cleanup;

 if (state->irq) {
  ret = request_threaded_irq(client->irq, ((void*)0), adv7180_irq,
        IRQF_ONESHOT | IRQF_TRIGGER_FALLING,
        KBUILD_MODNAME, state);
  if (ret)
   goto err_media_entity_cleanup;
 }

 ret = v4l2_async_register_subdev(sd);
 if (ret)
  goto err_free_irq;

 return 0;

err_free_irq:
 if (state->irq > 0)
  free_irq(client->irq, state);
err_media_entity_cleanup:
 media_entity_cleanup(&sd->entity);
err_free_ctrl:
 adv7180_exit_controls(state);
err_unregister_vpp_client:
 i2c_unregister_device(state->vpp_client);
err_unregister_csi_client:
 i2c_unregister_device(state->csi_client);
 mutex_destroy(&state->mutex);
 return ret;
}
