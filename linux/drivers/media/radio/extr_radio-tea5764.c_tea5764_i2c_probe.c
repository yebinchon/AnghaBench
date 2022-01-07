
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_device {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct v4l2_ctrl_handler {int error; } ;
struct tea5764_regs {scalar_t__ chipid; int manid; } ;
struct TYPE_4__ {int device_caps; struct v4l2_device* v4l2_dev; int * lock; } ;
struct tea5764_device {TYPE_1__ vdev; int mutex; struct tea5764_regs regs; struct i2c_client* i2c_client; struct v4l2_ctrl_handler ctrl_handler; struct v4l2_device v4l2_dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PDEBUG (char*,...) ;
 int PINFO (char*) ;
 int PWARN (char*) ;
 scalar_t__ TEA5764_CHIPID ;
 int TEA5764_MANID ;
 int V4L2_CAP_RADIO ;
 int V4L2_CAP_TUNER ;
 int V4L2_CID_AUDIO_MUTE ;
 int V4L2_TUNER_MODE_STEREO ;
 int VFL_TYPE_RADIO ;
 int i2c_set_clientdata (struct i2c_client*,struct tea5764_device*) ;
 int kfree (struct tea5764_device*) ;
 struct tea5764_device* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int radio_nr ;
 int tea5764_ctrl_ops ;
 int tea5764_i2c_read (struct tea5764_device*) ;
 int tea5764_mute (struct tea5764_device*,int) ;
 int tea5764_power_down (struct tea5764_device*) ;
 TYPE_1__ tea5764_radio_template ;
 int tea5764_set_audout_mode (struct tea5764_device*,int ) ;
 int v4l2_ctrl_handler_free (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 int v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int ,int,int,int) ;
 int v4l2_device_register (int *,struct v4l2_device*) ;
 int v4l2_device_unregister (struct v4l2_device*) ;
 int v4l2_err (struct v4l2_device*,char*) ;
 int video_register_device (TYPE_1__*,int ,int ) ;
 int video_set_drvdata (TYPE_1__*,struct tea5764_device*) ;

__attribute__((used)) static int tea5764_i2c_probe(struct i2c_client *client,
        const struct i2c_device_id *id)
{
 struct tea5764_device *radio;
 struct v4l2_device *v4l2_dev;
 struct v4l2_ctrl_handler *hdl;
 struct tea5764_regs *r;
 int ret;

 PDEBUG("probe");
 radio = kzalloc(sizeof(struct tea5764_device), GFP_KERNEL);
 if (!radio)
  return -ENOMEM;

 v4l2_dev = &radio->v4l2_dev;
 ret = v4l2_device_register(&client->dev, v4l2_dev);
 if (ret < 0) {
  v4l2_err(v4l2_dev, "could not register v4l2_device\n");
  goto errfr;
 }

 hdl = &radio->ctrl_handler;
 v4l2_ctrl_handler_init(hdl, 1);
 v4l2_ctrl_new_std(hdl, &tea5764_ctrl_ops,
   V4L2_CID_AUDIO_MUTE, 0, 1, 1, 1);
 v4l2_dev->ctrl_handler = hdl;
 if (hdl->error) {
  ret = hdl->error;
  v4l2_err(v4l2_dev, "Could not register controls\n");
  goto errunreg;
 }

 mutex_init(&radio->mutex);
 radio->i2c_client = client;
 ret = tea5764_i2c_read(radio);
 if (ret)
  goto errunreg;
 r = &radio->regs;
 PDEBUG("chipid = %04X, manid = %04X", r->chipid, r->manid);
 if (r->chipid != TEA5764_CHIPID ||
  (r->manid & 0x0fff) != TEA5764_MANID) {
  PWARN("This chip is not a TEA5764!");
  ret = -EINVAL;
  goto errunreg;
 }

 radio->vdev = tea5764_radio_template;

 i2c_set_clientdata(client, radio);
 video_set_drvdata(&radio->vdev, radio);
 radio->vdev.lock = &radio->mutex;
 radio->vdev.v4l2_dev = v4l2_dev;
 radio->vdev.device_caps = V4L2_CAP_TUNER | V4L2_CAP_RADIO;


 tea5764_i2c_read(radio);
 tea5764_set_audout_mode(radio, V4L2_TUNER_MODE_STEREO);
 tea5764_mute(radio, 1);
 tea5764_power_down(radio);

 ret = video_register_device(&radio->vdev, VFL_TYPE_RADIO, radio_nr);
 if (ret < 0) {
  PWARN("Could not register video device!");
  goto errunreg;
 }

 PINFO("registered.");
 return 0;
errunreg:
 v4l2_ctrl_handler_free(hdl);
 v4l2_device_unregister(v4l2_dev);
errfr:
 kfree(radio);
 return ret;
}
