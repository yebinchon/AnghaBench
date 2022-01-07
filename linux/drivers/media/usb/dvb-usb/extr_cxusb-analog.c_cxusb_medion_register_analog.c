
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dvb_usb_device {TYPE_1__* udev; struct cxusb_medion_dev* priv; } ;
struct TYPE_5__ {int release; } ;
struct cxusb_medion_dev {int width; int height; int v4l2_release; TYPE_2__ v4l2dev; int videodev; int buflist; int urbwork; int dev_lock; } ;
struct TYPE_4__ {int dev; } ;


 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int cxusb_medion_register_analog_radio (struct dvb_usb_device*) ;
 int cxusb_medion_register_analog_subdevs (struct dvb_usb_device*) ;
 int cxusb_medion_register_analog_video (struct dvb_usb_device*) ;
 int cxusb_medion_v4l2_release ;
 int cxusb_medion_v_complete_work ;
 int dev_err (int *,char*,int) ;
 int init_completion (int *) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int v4l2_device_put (TYPE_2__*) ;
 int v4l2_device_register (int *,TYPE_2__*) ;
 int video_unregister_device (int ) ;
 int wait_for_completion (int *) ;

int cxusb_medion_register_analog(struct dvb_usb_device *dvbdev)
{
 struct cxusb_medion_dev *cxdev = dvbdev->priv;
 int ret;

 mutex_init(&cxdev->dev_lock);

 init_completion(&cxdev->v4l2_release);

 cxdev->v4l2dev.release = cxusb_medion_v4l2_release;

 ret = v4l2_device_register(&dvbdev->udev->dev, &cxdev->v4l2dev);
 if (ret != 0) {
  dev_err(&dvbdev->udev->dev,
   "V4L2 device registration failed, ret = %d\n", ret);
  mutex_destroy(&cxdev->dev_lock);
  return ret;
 }

 ret = cxusb_medion_register_analog_subdevs(dvbdev);
 if (ret)
  goto ret_unregister;

 INIT_WORK(&cxdev->urbwork, cxusb_medion_v_complete_work);
 INIT_LIST_HEAD(&cxdev->buflist);

 cxdev->width = 320;
 cxdev->height = 240;

 ret = cxusb_medion_register_analog_video(dvbdev);
 if (ret)
  goto ret_unregister;

 ret = cxusb_medion_register_analog_radio(dvbdev);
 if (ret)
  goto ret_vunreg;

 return 0;

ret_vunreg:
 video_unregister_device(cxdev->videodev);

ret_unregister:
 v4l2_device_put(&cxdev->v4l2dev);
 wait_for_completion(&cxdev->v4l2_release);

 return ret;
}
