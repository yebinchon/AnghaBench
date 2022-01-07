
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int width; int height; int bytesperline; int sizeimage; int colorspace; int field; int pixelformat; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;
struct dvb_usb_device {struct cxusb_medion_dev* priv; } ;
struct cxusb_medion_dev {int width; int height; int field_order; int videoqueue; } ;


 int V4L2_COLORSPACE_SMPTE170M ;
 int V4L2_PIX_FMT_UYVY ;
 int cxusb_medion_field_order (struct cxusb_medion_dev*) ;
 scalar_t__ vb2_start_streaming_called (int *) ;
 struct dvb_usb_device* video_drvdata (struct file*) ;

__attribute__((used)) static int cxusb_medion_g_fmt_vid_cap(struct file *file, void *fh,
          struct v4l2_format *f)
{
 struct dvb_usb_device *dvbdev = video_drvdata(file);
 struct cxusb_medion_dev *cxdev = dvbdev->priv;

 f->fmt.pix.width = cxdev->width;
 f->fmt.pix.height = cxdev->height;
 f->fmt.pix.pixelformat = V4L2_PIX_FMT_UYVY;
 f->fmt.pix.field = vb2_start_streaming_called(&cxdev->videoqueue) ?
  cxdev->field_order : cxusb_medion_field_order(cxdev);
 f->fmt.pix.bytesperline = cxdev->width * 2;
 f->fmt.pix.colorspace = V4L2_COLORSPACE_SMPTE170M;
 f->fmt.pix.sizeimage = f->fmt.pix.bytesperline * f->fmt.pix.height;

 return 0;
}
