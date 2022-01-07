
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx231xx_fh {int stream_on; scalar_t__ type; struct cx231xx* dev; } ;
struct cx231xx {int stream_on; int vbi_stream_on; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VBI_CAPTURE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;

__attribute__((used)) static int res_get(struct cx231xx_fh *fh)
{
 struct cx231xx *dev = fh->dev;
 int rc = 0;


 if (fh->stream_on)
  return rc;

 if (fh->type == V4L2_BUF_TYPE_VIDEO_CAPTURE) {
  if (dev->stream_on)
   return -EBUSY;
  dev->stream_on = 1;
 } else if (fh->type == V4L2_BUF_TYPE_VBI_CAPTURE) {
  if (dev->vbi_stream_on)
   return -EBUSY;
  dev->vbi_stream_on = 1;
 } else
  return -EINVAL;

 fh->stream_on = 1;

 return rc;
}
