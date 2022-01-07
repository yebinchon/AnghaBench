
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {scalar_t__ vfl_type; } ;
struct v4l2_tuner {scalar_t__ index; } ;
struct file {int dummy; } ;
struct dvb_usb_device {struct cxusb_medion_dev* priv; } ;
struct cxusb_medion_dev {int cx25840; struct v4l2_tuner const* norm; int tuner; int tda9887; } ;


 int EINVAL ;
 scalar_t__ VFL_TYPE_GRABBER ;
 int s_radio ;
 int s_std ;
 int s_tuner ;
 int v4l2_subdev_call (int ,struct v4l2_tuner const*,int ,...) ;
 struct v4l2_tuner const* video ;
 struct video_device* video_devdata (struct file*) ;
 struct dvb_usb_device* video_drvdata (struct file*) ;

__attribute__((used)) static int cxusb_medion_s_tuner(struct file *file, void *fh,
    const struct v4l2_tuner *tuner)
{
 struct dvb_usb_device *dvbdev = video_drvdata(file);
 struct cxusb_medion_dev *cxdev = dvbdev->priv;
 struct video_device *vdev = video_devdata(file);
 int ret;

 if (tuner->index != 0)
  return -EINVAL;

 ret = v4l2_subdev_call(cxdev->tda9887, tuner, s_tuner, tuner);
 if (ret != 0)
  return ret;

 ret = v4l2_subdev_call(cxdev->tuner, tuner, s_tuner, tuner);
 if (ret != 0)
  return ret;





 if (vdev->vfl_type == VFL_TYPE_GRABBER)
  v4l2_subdev_call(cxdev->cx25840, video, s_std, cxdev->norm);
 else
  v4l2_subdev_call(cxdev->cx25840, tuner, s_radio);

 return v4l2_subdev_call(cxdev->cx25840, tuner, s_tuner, tuner);
}
