
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {scalar_t__ tuner; } ;
struct file {int dummy; } ;
struct dvb_usb_device {struct cxusb_medion_dev* priv; } ;
struct cxusb_medion_dev {int tuner; } ;


 int EINVAL ;
 int g_frequency ;
 int tuner ;
 int v4l2_subdev_call (int ,int ,int ,struct v4l2_frequency*) ;
 struct dvb_usb_device* video_drvdata (struct file*) ;

__attribute__((used)) static int cxusb_medion_g_frequency(struct file *file, void *fh,
        struct v4l2_frequency *freq)
{
 struct dvb_usb_device *dvbdev = video_drvdata(file);
 struct cxusb_medion_dev *cxdev = dvbdev->priv;

 if (freq->tuner != 0)
  return -EINVAL;

 return v4l2_subdev_call(cxdev->tuner, tuner, g_frequency, freq);
}
