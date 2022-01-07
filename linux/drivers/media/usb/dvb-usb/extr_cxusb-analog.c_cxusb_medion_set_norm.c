
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct dvb_usb_device {TYPE_1__* udev; } ;
struct cxusb_medion_dev {scalar_t__ input; int norm; int cx25840; int tuner; int tda9887; struct dvb_usb_device* dvbdev; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int OPS ;
 int V4L2_STD_PAL ;
 int V4L2_STD_UNKNOWN ;
 int cxusb_vprintk (struct dvb_usb_device*,int ,char*,unsigned int,unsigned long) ;
 int dev_err (int *,char*,int) ;
 int s_std ;
 int v4l2_subdev_call (int ,int ,int ,int) ;
 int video ;

__attribute__((used)) static int cxusb_medion_set_norm(struct cxusb_medion_dev *cxdev,
     v4l2_std_id norm)
{
 struct dvb_usb_device *dvbdev = cxdev->dvbdev;
 int ret;

 cxusb_vprintk(dvbdev, OPS,
        "trying to set standard for input %u to %lx\n",
        (unsigned int)cxdev->input,
        (unsigned long)norm);


 if (norm == V4L2_STD_UNKNOWN)
  return -EINVAL;


 if (cxdev->input != 0) {
  ret = v4l2_subdev_call(cxdev->cx25840, video, s_std, norm);
  if (ret)
   return ret;

  goto ret_savenorm;
 }


 if ((norm & ~V4L2_STD_PAL) != 0)
  return -EINVAL;

 ret = v4l2_subdev_call(cxdev->tda9887, video, s_std, norm);
 if (ret != 0) {
  dev_err(&dvbdev->udev->dev,
   "tda9887 norm setup failed (%d)\n",
   ret);
  return ret;
 }

 ret = v4l2_subdev_call(cxdev->tuner, video, s_std, norm);
 if (ret != 0) {
  dev_err(&dvbdev->udev->dev,
   "tuner norm setup failed (%d)\n",
   ret);
  return ret;
 }

 ret = v4l2_subdev_call(cxdev->cx25840, video, s_std, norm);
 if (ret != 0) {
  dev_err(&dvbdev->udev->dev,
   "cx25840 norm setup failed (%d)\n",
   ret);
  return ret;
 }

ret_savenorm:
 cxdev->norm = norm;

 return 0;
}
