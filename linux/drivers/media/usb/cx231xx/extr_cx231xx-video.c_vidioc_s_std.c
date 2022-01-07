
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct TYPE_2__ {int width; int height; int code; } ;
struct v4l2_subdev_format {TYPE_1__ format; int which; } ;
struct file {int dummy; } ;
struct cx231xx_fh {int vb_vidq; struct cx231xx* dev; } ;
struct cx231xx {int norm; int width; int height; } ;


 int EBUSY ;
 int MEDIA_BUS_FMT_FIXED ;
 int V4L2_STD_625_50 ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int call_all (struct cx231xx*,int ,int ,int,...) ;
 int check_dev (struct cx231xx*) ;
 int cx231xx_do_mode_ctrl_overrides (struct cx231xx*) ;
 int pad ;
 int s_std ;
 int set_fmt ;
 int video ;
 scalar_t__ videobuf_queue_is_busy (int *) ;

__attribute__((used)) static int vidioc_s_std(struct file *file, void *priv, v4l2_std_id norm)
{
 struct cx231xx_fh *fh = priv;
 struct cx231xx *dev = fh->dev;
 struct v4l2_subdev_format format = {
  .which = V4L2_SUBDEV_FORMAT_ACTIVE,
 };
 int rc;

 rc = check_dev(dev);
 if (rc < 0)
  return rc;

 if (dev->norm == norm)
  return 0;

 if (videobuf_queue_is_busy(&fh->vb_vidq))
  return -EBUSY;

 dev->norm = norm;


 dev->width = 720;
 dev->height = (dev->norm & V4L2_STD_625_50) ? 576 : 480;

 call_all(dev, video, s_std, dev->norm);




 format.format.code = MEDIA_BUS_FMT_FIXED;
 format.format.width = dev->width;
 format.format.height = dev->height;
 call_all(dev, pad, set_fmt, ((void*)0), &format);


 cx231xx_do_mode_ctrl_overrides(dev);

 return 0;
}
