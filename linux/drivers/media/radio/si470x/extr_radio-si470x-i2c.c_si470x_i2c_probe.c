
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int error; } ;
struct TYPE_7__ {int device_caps; int release; int * v4l2_dev; int * lock; TYPE_3__* ctrl_handler; } ;
struct si470x_device {int band; scalar_t__ (* set_register ) (struct si470x_device*,size_t) ;int* registers; int buf_size; int v4l2_dev; TYPE_3__ hdl; TYPE_1__ videodev; int read_queue; scalar_t__ rd_index; scalar_t__ wr_index; int buffer; scalar_t__ gpio_reset; int lock; int vidioc_querycap; int fops_release; int fops_open; int get_register; int completion; struct i2c_client* client; } ;
struct i2c_client {int dev; int irq; } ;


 size_t DEVICEID ;
 int DRIVER_NAME ;
 int EIO ;
 int ENOMEM ;
 double FREQ_MUL ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 scalar_t__ IS_ERR (scalar_t__) ;
 size_t POWERCFG ;
 int POWERCFG_ENABLE ;
 int PTR_ERR (scalar_t__) ;
 int RADIO_FW_VERSION ;
 size_t SI_CHIPID ;
 int SI_CHIPID_FIRMWARE ;
 int V4L2_CAP_HW_FREQ_SEEK ;
 int V4L2_CAP_RADIO ;
 int V4L2_CAP_RDS_CAPTURE ;
 int V4L2_CAP_READWRITE ;
 int V4L2_CAP_TUNER ;
 int V4L2_CID_AUDIO_MUTE ;
 int V4L2_CID_AUDIO_VOLUME ;
 int VFL_TYPE_RADIO ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,int,int) ;
 int dev_warn (int *,char*,...) ;
 scalar_t__ devm_gpiod_get_optional (int *,char*,int ) ;
 int devm_kmalloc (int *,int,int ) ;
 struct si470x_device* devm_kzalloc (int *,int,int ) ;
 int devm_request_threaded_irq (int *,int ,int *,int ,int,int ,struct si470x_device*) ;
 int gpiod_set_value (scalar_t__,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct si470x_device*) ;
 int init_completion (int *) ;
 int init_waitqueue_head (int *) ;
 int msleep (int) ;
 int mutex_init (int *) ;
 int radio_nr ;
 int rds_buf ;
 int si470x_ctrl_ops ;
 int si470x_fops_open ;
 int si470x_fops_release ;
 scalar_t__ si470x_get_all_registers (struct si470x_device*) ;
 int si470x_get_register ;
 int si470x_i2c_interrupt ;
 int si470x_set_freq (struct si470x_device*,double) ;
 scalar_t__ si470x_set_register (struct si470x_device*,size_t) ;
 TYPE_1__ si470x_viddev_template ;
 int si470x_vidioc_querycap ;
 int v4l2_ctrl_handler_free (TYPE_3__*) ;
 int v4l2_ctrl_handler_init (TYPE_3__*,int) ;
 int v4l2_ctrl_new_std (TYPE_3__*,int *,int ,int ,int,int,int) ;
 int v4l2_device_register (int *,int *) ;
 int v4l2_device_unregister (int *) ;
 int video_device_release_empty ;
 int video_register_device (TYPE_1__*,int ,int ) ;
 int video_set_drvdata (TYPE_1__*,struct si470x_device*) ;

__attribute__((used)) static int si470x_i2c_probe(struct i2c_client *client)
{
 struct si470x_device *radio;
 int retval = 0;
 unsigned char version_warning = 0;


 radio = devm_kzalloc(&client->dev, sizeof(*radio), GFP_KERNEL);
 if (!radio) {
  retval = -ENOMEM;
  goto err_initial;
 }

 radio->client = client;
 radio->band = 1;
 mutex_init(&radio->lock);
 init_completion(&radio->completion);

 radio->get_register = si470x_get_register;
 radio->set_register = si470x_set_register;
 radio->fops_open = si470x_fops_open;
 radio->fops_release = si470x_fops_release;
 radio->vidioc_querycap = si470x_vidioc_querycap;

 retval = v4l2_device_register(&client->dev, &radio->v4l2_dev);
 if (retval < 0) {
  dev_err(&client->dev, "couldn't register v4l2_device\n");
  goto err_initial;
 }

 v4l2_ctrl_handler_init(&radio->hdl, 2);
 v4l2_ctrl_new_std(&radio->hdl, &si470x_ctrl_ops,
   V4L2_CID_AUDIO_MUTE, 0, 1, 1, 1);
 v4l2_ctrl_new_std(&radio->hdl, &si470x_ctrl_ops,
   V4L2_CID_AUDIO_VOLUME, 0, 15, 1, 15);
 if (radio->hdl.error) {
  retval = radio->hdl.error;
  dev_err(&client->dev, "couldn't register control\n");
  goto err_dev;
 }


 radio->videodev = si470x_viddev_template;
 radio->videodev.ctrl_handler = &radio->hdl;
 radio->videodev.lock = &radio->lock;
 radio->videodev.v4l2_dev = &radio->v4l2_dev;
 radio->videodev.release = video_device_release_empty;
 radio->videodev.device_caps =
  V4L2_CAP_HW_FREQ_SEEK | V4L2_CAP_READWRITE | V4L2_CAP_TUNER |
  V4L2_CAP_RADIO | V4L2_CAP_RDS_CAPTURE;
 video_set_drvdata(&radio->videodev, radio);

 radio->gpio_reset = devm_gpiod_get_optional(&client->dev, "reset",
          GPIOD_OUT_LOW);
 if (IS_ERR(radio->gpio_reset)) {
  retval = PTR_ERR(radio->gpio_reset);
  dev_err(&client->dev, "Failed to request gpio: %d\n", retval);
  goto err_all;
 }

 if (radio->gpio_reset)
  gpiod_set_value(radio->gpio_reset, 1);


 radio->registers[POWERCFG] = POWERCFG_ENABLE;
 if (si470x_set_register(radio, POWERCFG) < 0) {
  retval = -EIO;
  goto err_all;
 }
 msleep(110);


 if (si470x_get_all_registers(radio) < 0) {
  retval = -EIO;
  goto err_all;
 }
 dev_info(&client->dev, "DeviceID=0x%4.4hx ChipID=0x%4.4hx\n",
   radio->registers[DEVICEID], radio->registers[SI_CHIPID]);
 if ((radio->registers[SI_CHIPID] & SI_CHIPID_FIRMWARE) < RADIO_FW_VERSION) {
  dev_warn(&client->dev,
   "This driver is known to work with firmware version %hu,\n",
   RADIO_FW_VERSION);
  dev_warn(&client->dev,
   "but the device has firmware version %hu.\n",
   radio->registers[SI_CHIPID] & SI_CHIPID_FIRMWARE);
  version_warning = 1;
 }


 if (version_warning == 1) {
  dev_warn(&client->dev,
   "If you have some trouble using this driver,\n");
  dev_warn(&client->dev,
   "please report to V4L ML at linux-media@vger.kernel.org\n");
 }


 si470x_set_freq(radio, 87.5 * FREQ_MUL);


 radio->buf_size = rds_buf * 3;
 radio->buffer = devm_kmalloc(&client->dev, radio->buf_size, GFP_KERNEL);
 if (!radio->buffer) {
  retval = -EIO;
  goto err_all;
 }


 radio->wr_index = 0;
 radio->rd_index = 0;
 init_waitqueue_head(&radio->read_queue);

 retval = devm_request_threaded_irq(&client->dev, client->irq, ((void*)0),
        si470x_i2c_interrupt,
        IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
        DRIVER_NAME, radio);
 if (retval) {
  dev_err(&client->dev, "Failed to register interrupt\n");
  goto err_all;
 }


 retval = video_register_device(&radio->videodev, VFL_TYPE_RADIO,
   radio_nr);
 if (retval) {
  dev_warn(&client->dev, "Could not register video device\n");
  goto err_all;
 }
 i2c_set_clientdata(client, radio);

 return 0;
err_all:
 v4l2_ctrl_handler_free(&radio->hdl);
err_dev:
 v4l2_device_unregister(&radio->v4l2_dev);
err_initial:
 return retval;
}
