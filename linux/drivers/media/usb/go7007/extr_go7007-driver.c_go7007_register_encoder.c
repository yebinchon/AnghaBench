
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tuner_setup {scalar_t__ type; int mode_mask; int addr; } ;
struct TYPE_5__ {int release; } ;
struct go7007 {int i2c_adapter_online; scalar_t__ board_id; scalar_t__ tuner_type; int audio_enabled; TYPE_1__* board_info; scalar_t__ channel_number; int sd_video; TYPE_2__ v4l2_dev; int i2c_adapter; int hw_lock; int dev; int name; } ;
struct TYPE_4__ {int flags; int * i2c_devs; } ;


 int ADDR_UNSET ;
 scalar_t__ GO7007_BOARDID_ADLINK_MPG24 ;
 scalar_t__ GO7007_BOARDID_ADS_USBAV_709 ;
 int GO7007_BOARD_HAS_AUDIO ;
 int GO7007_BOARD_USE_ONBOARD_I2C ;
 int T_ANALOG_TV ;
 int dev_info (int ,char*,int ) ;
 int go7007_i2c_init (struct go7007*) ;
 int go7007_init_encoder (struct go7007*) ;
 int go7007_remove ;
 int go7007_snd_init (struct go7007*) ;
 int go7007_v4l2_ctrl_init (struct go7007*) ;
 int go7007_v4l2_init (struct go7007*) ;
 int go7007_write_addr (struct go7007*,int,int) ;
 int init_i2c_module (int *,int *) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int s_routing ;
 int s_type_addr ;
 int tuner ;
 int v4l2_device_call_all (TYPE_2__*,int ,int ,int ,struct tuner_setup*) ;
 int v4l2_device_register (int ,TYPE_2__*) ;
 int v4l2_subdev_call (int ,int ,int ,int ,int ,scalar_t__) ;
 int video ;

int go7007_register_encoder(struct go7007 *go, unsigned num_i2c_devs)
{
 int i, ret;

 dev_info(go->dev, "go7007: registering new %s\n", go->name);

 go->v4l2_dev.release = go7007_remove;
 ret = v4l2_device_register(go->dev, &go->v4l2_dev);
 if (ret < 0)
  return ret;

 mutex_lock(&go->hw_lock);
 ret = go7007_init_encoder(go);
 mutex_unlock(&go->hw_lock);
 if (ret < 0)
  return ret;

 ret = go7007_v4l2_ctrl_init(go);
 if (ret < 0)
  return ret;

 if (!go->i2c_adapter_online &&
   go->board_info->flags & GO7007_BOARD_USE_ONBOARD_I2C) {
  ret = go7007_i2c_init(go);
  if (ret < 0)
   return ret;
  go->i2c_adapter_online = 1;
 }
 if (go->i2c_adapter_online) {
  if (go->board_id == GO7007_BOARDID_ADS_USBAV_709) {

   go7007_write_addr(go, 0x3c82, 0x0009);
   msleep(50);
   go7007_write_addr(go, 0x3c82, 0x000d);
  }
  for (i = 0; i < num_i2c_devs; ++i)
   init_i2c_module(&go->i2c_adapter, &go->board_info->i2c_devs[i]);

  if (go->tuner_type >= 0) {
   struct tuner_setup setup = {
    .addr = ADDR_UNSET,
    .type = go->tuner_type,
    .mode_mask = T_ANALOG_TV,
   };

   v4l2_device_call_all(&go->v4l2_dev, 0, tuner,
    s_type_addr, &setup);
  }
  if (go->board_id == GO7007_BOARDID_ADLINK_MPG24)
   v4l2_subdev_call(go->sd_video, video, s_routing,
     0, 0, go->channel_number + 1);
 }

 ret = go7007_v4l2_init(go);
 if (ret < 0)
  return ret;

 if (go->board_info->flags & GO7007_BOARD_HAS_AUDIO) {
  go->audio_enabled = 1;
  go7007_snd_init(go);
 }
 return 0;
}
