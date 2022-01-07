
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct v4l2_device {int name; int release; } ;
struct usb_interface {int dev; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_7__ {int error; } ;
struct TYPE_6__ {int device_caps; TYPE_3__* ctrl_handler; int * lock; int release; int * ioctl_ops; int * fops; struct v4l2_device* v4l2_dev; int name; } ;
struct dsbr100_device {int curfreq; int muted; struct dsbr100_device* transfer_buffer; TYPE_3__ hdl; TYPE_1__ videodev; int usbdev; int v4l2_lock; struct v4l2_device v4l2_dev; } ;


 int ENOMEM ;
 int FREQ_MIN ;
 int FREQ_MUL ;
 int GFP_KERNEL ;
 int TB_LEN ;
 int V4L2_CAP_RADIO ;
 int V4L2_CAP_TUNER ;
 int V4L2_CID_AUDIO_MUTE ;
 int VFL_TYPE_RADIO ;
 int interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct dsbr100_device*) ;
 struct dsbr100_device* kmalloc (int ,int ) ;
 struct dsbr100_device* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int radio_nr ;
 int strscpy (int ,int ,int) ;
 int usb_dsbr100_ctrl_ops ;
 int usb_dsbr100_fops ;
 int usb_dsbr100_ioctl_ops ;
 int usb_dsbr100_release ;
 int usb_set_intfdata (struct usb_interface*,struct dsbr100_device*) ;
 int v4l2_ctrl_handler_free (TYPE_3__*) ;
 int v4l2_ctrl_handler_init (TYPE_3__*,int) ;
 int v4l2_ctrl_new_std (TYPE_3__*,int *,int ,int ,int,int,int) ;
 int v4l2_device_register (int *,struct v4l2_device*) ;
 int v4l2_device_unregister (struct v4l2_device*) ;
 int v4l2_err (struct v4l2_device*,char*) ;
 int video_device_release_empty ;
 int video_register_device (TYPE_1__*,int ,int ) ;
 int video_set_drvdata (TYPE_1__*,struct dsbr100_device*) ;

__attribute__((used)) static int usb_dsbr100_probe(struct usb_interface *intf,
    const struct usb_device_id *id)
{
 struct dsbr100_device *radio;
 struct v4l2_device *v4l2_dev;
 int retval;

 radio = kzalloc(sizeof(struct dsbr100_device), GFP_KERNEL);

 if (!radio)
  return -ENOMEM;

 radio->transfer_buffer = kmalloc(TB_LEN, GFP_KERNEL);

 if (!(radio->transfer_buffer)) {
  kfree(radio);
  return -ENOMEM;
 }

 v4l2_dev = &radio->v4l2_dev;
 v4l2_dev->release = usb_dsbr100_release;

 retval = v4l2_device_register(&intf->dev, v4l2_dev);
 if (retval < 0) {
  v4l2_err(v4l2_dev, "couldn't register v4l2_device\n");
  goto err_reg_dev;
 }

 v4l2_ctrl_handler_init(&radio->hdl, 1);
 v4l2_ctrl_new_std(&radio->hdl, &usb_dsbr100_ctrl_ops,
     V4L2_CID_AUDIO_MUTE, 0, 1, 1, 1);
 if (radio->hdl.error) {
  retval = radio->hdl.error;
  v4l2_err(v4l2_dev, "couldn't register control\n");
  goto err_reg_ctrl;
 }
 mutex_init(&radio->v4l2_lock);
 strscpy(radio->videodev.name, v4l2_dev->name,
  sizeof(radio->videodev.name));
 radio->videodev.v4l2_dev = v4l2_dev;
 radio->videodev.fops = &usb_dsbr100_fops;
 radio->videodev.ioctl_ops = &usb_dsbr100_ioctl_ops;
 radio->videodev.release = video_device_release_empty;
 radio->videodev.lock = &radio->v4l2_lock;
 radio->videodev.ctrl_handler = &radio->hdl;
 radio->videodev.device_caps = V4L2_CAP_RADIO | V4L2_CAP_TUNER;

 radio->usbdev = interface_to_usbdev(intf);
 radio->curfreq = FREQ_MIN * FREQ_MUL;
 radio->muted = 1;

 video_set_drvdata(&radio->videodev, radio);
 usb_set_intfdata(intf, radio);

 retval = video_register_device(&radio->videodev, VFL_TYPE_RADIO, radio_nr);
 if (retval == 0)
  return 0;
 v4l2_err(v4l2_dev, "couldn't register video device\n");

err_reg_ctrl:
 v4l2_ctrl_handler_free(&radio->hdl);
 v4l2_device_unregister(v4l2_dev);
err_reg_dev:
 kfree(radio->transfer_buffer);
 kfree(radio);
 return retval;
}
