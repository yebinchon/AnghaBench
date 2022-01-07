
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct v4l2_subdev {int ctrl_handler; } ;
struct usb_interface {int dev; } ;
struct usb_device_id {int idProduct; int idVendor; } ;
struct TYPE_9__ {int name; int release; } ;
struct TYPE_8__ {int device_caps; int vfl_dir; int release; int * lock; int * ioctl_ops; int * fops; TYPE_4__* v4l2_dev; int name; int ctrl_handler; } ;
struct i2c_adapter {int dummy; } ;
struct si4713_usb_device {struct si4713_usb_device* buffer; TYPE_4__ v4l2_dev; TYPE_1__ vdev; int lock; struct v4l2_subdev* v4l2_subdev; struct i2c_adapter i2c_adapter; struct usb_interface* intf; int usbdev; } ;


 int BUFFER_LENGTH ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int V4L2_CAP_MODULATOR ;
 int V4L2_CAP_RDS_OUTPUT ;
 int VFL_DIR_TX ;
 int VFL_TYPE_RADIO ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int ,...) ;
 int i2c_del_adapter (struct i2c_adapter*) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct si4713_usb_device*) ;
 struct si4713_usb_device* kmalloc (int ,int ) ;
 struct si4713_usb_device* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int si4713_board_info ;
 int si4713_register_i2c_adapter (struct si4713_usb_device*) ;
 int si4713_start_seq (struct si4713_usb_device*) ;
 int strscpy (int ,int ,int) ;
 int usb_set_intfdata (struct usb_interface*,TYPE_4__*) ;
 int usb_si4713_fops ;
 int usb_si4713_ioctl_ops ;
 int usb_si4713_video_device_release ;
 int v4l2_device_register (int *,TYPE_4__*) ;
 int v4l2_device_unregister (TYPE_4__*) ;
 struct v4l2_subdev* v4l2_i2c_new_subdev_board (TYPE_4__*,struct i2c_adapter*,int *,int *) ;
 int video_device_node_name (TYPE_1__*) ;
 int video_device_release_empty ;
 int video_register_device (TYPE_1__*,int ,int) ;
 int video_set_drvdata (TYPE_1__*,struct si4713_usb_device*) ;

__attribute__((used)) static int usb_si4713_probe(struct usb_interface *intf,
    const struct usb_device_id *id)
{
 struct si4713_usb_device *radio;
 struct i2c_adapter *adapter;
 struct v4l2_subdev *sd;
 int retval = -ENOMEM;

 dev_info(&intf->dev, "Si4713 development board discovered: (%04X:%04X)\n",
   id->idVendor, id->idProduct);


 radio = kzalloc(sizeof(struct si4713_usb_device), GFP_KERNEL);
 if (radio)
  radio->buffer = kmalloc(BUFFER_LENGTH, GFP_KERNEL);

 if (!radio || !radio->buffer) {
  dev_err(&intf->dev, "kmalloc for si4713_usb_device failed\n");
  kfree(radio);
  return -ENOMEM;
 }

 mutex_init(&radio->lock);

 radio->usbdev = interface_to_usbdev(intf);
 radio->intf = intf;
 usb_set_intfdata(intf, &radio->v4l2_dev);

 retval = si4713_start_seq(radio);
 if (retval < 0)
  goto err_v4l2;

 retval = v4l2_device_register(&intf->dev, &radio->v4l2_dev);
 if (retval < 0) {
  dev_err(&intf->dev, "couldn't register v4l2_device\n");
  goto err_v4l2;
 }

 retval = si4713_register_i2c_adapter(radio);
 if (retval < 0) {
  dev_err(&intf->dev, "could not register i2c device\n");
  goto err_i2cdev;
 }

 adapter = &radio->i2c_adapter;
 sd = v4l2_i2c_new_subdev_board(&radio->v4l2_dev, adapter,
       &si4713_board_info, ((void*)0));
 radio->v4l2_subdev = sd;
 if (!sd) {
  dev_err(&intf->dev, "cannot get v4l2 subdevice\n");
  retval = -ENODEV;
  goto del_adapter;
 }

 radio->vdev.ctrl_handler = sd->ctrl_handler;
 radio->v4l2_dev.release = usb_si4713_video_device_release;
 strscpy(radio->vdev.name, radio->v4l2_dev.name,
  sizeof(radio->vdev.name));
 radio->vdev.v4l2_dev = &radio->v4l2_dev;
 radio->vdev.fops = &usb_si4713_fops;
 radio->vdev.ioctl_ops = &usb_si4713_ioctl_ops;
 radio->vdev.lock = &radio->lock;
 radio->vdev.release = video_device_release_empty;
 radio->vdev.vfl_dir = VFL_DIR_TX;
 radio->vdev.device_caps = V4L2_CAP_MODULATOR | V4L2_CAP_RDS_OUTPUT;

 video_set_drvdata(&radio->vdev, radio);

 retval = video_register_device(&radio->vdev, VFL_TYPE_RADIO, -1);
 if (retval < 0) {
  dev_err(&intf->dev, "could not register video device\n");
  goto del_adapter;
 }

 dev_info(&intf->dev, "V4L2 device registered as %s\n",
   video_device_node_name(&radio->vdev));

 return 0;

del_adapter:
 i2c_del_adapter(adapter);
err_i2cdev:
 v4l2_device_unregister(&radio->v4l2_dev);
err_v4l2:
 kfree(radio->buffer);
 kfree(radio);
 return retval;
}
