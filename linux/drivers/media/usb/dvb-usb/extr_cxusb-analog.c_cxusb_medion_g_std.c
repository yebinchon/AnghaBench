
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct file {int dummy; } ;
struct dvb_usb_device {struct cxusb_medion_dev* priv; } ;
struct cxusb_medion_dev {int norm; } ;


 int ENODATA ;
 int V4L2_STD_UNKNOWN ;
 struct dvb_usb_device* video_drvdata (struct file*) ;

__attribute__((used)) static int cxusb_medion_g_std(struct file *file, void *fh,
         v4l2_std_id *norm)
{
 struct dvb_usb_device *dvbdev = video_drvdata(file);
 struct cxusb_medion_dev *cxdev = dvbdev->priv;

 *norm = cxdev->norm;

 if (*norm == V4L2_STD_UNKNOWN)
  return -ENODATA;

 return 0;
}
