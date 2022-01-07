
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm6000_fh {scalar_t__ type; int vb_vidq; struct tm6000_core* dev; } ;
struct tm6000_core {int dummy; } ;
struct file {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int res_get (struct tm6000_core*,struct tm6000_fh*,int) ;
 int videobuf_streamon (int *) ;

__attribute__((used)) static int vidioc_streamon(struct file *file, void *priv, enum v4l2_buf_type i)
{
 struct tm6000_fh *fh = priv;
 struct tm6000_core *dev = fh->dev;

 if (fh->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;
 if (i != fh->type)
  return -EINVAL;

 if (!res_get(dev, fh, 0))
  return -EBUSY;
 return videobuf_streamon(&fh->vb_vidq);
}
