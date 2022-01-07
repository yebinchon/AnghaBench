
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ v4l2_std_id ;
struct file {int dummy; } ;
struct dvb_usb_device {struct cxusb_medion_dev* priv; } ;
struct cxusb_medion_dev {scalar_t__ input; int cx25840; } ;


 int OPS ;
 scalar_t__ V4L2_STD_ALL ;
 scalar_t__ V4L2_STD_PAL ;
 int cxusb_vprintk (struct dvb_usb_device*,int ,char*,unsigned int,...) ;
 int querystd ;
 int v4l2_subdev_call (int ,int ,int ,scalar_t__*) ;
 int video ;
 struct dvb_usb_device* video_drvdata (struct file*) ;

__attribute__((used)) static int cxusb_medion_querystd(struct file *file, void *fh,
     v4l2_std_id *norm)
{
 struct dvb_usb_device *dvbdev = video_drvdata(file);
 struct cxusb_medion_dev *cxdev = dvbdev->priv;
 v4l2_std_id norm_mask;
 int ret;





 if (cxdev->input == 0)
  norm_mask = V4L2_STD_PAL;
 else
  norm_mask = V4L2_STD_ALL;

 ret = v4l2_subdev_call(cxdev->cx25840, video, querystd, norm);
 if (ret != 0) {
  cxusb_vprintk(dvbdev, OPS,
         "cannot get detected standard for input %u\n",
         (unsigned int)cxdev->input);
  return ret;
 }

 cxusb_vprintk(dvbdev, OPS, "input %u detected standard is %lx\n",
        (unsigned int)cxdev->input, (unsigned long)*norm);
 *norm &= norm_mask;

 return 0;
}
