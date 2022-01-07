
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct vb2_queue {int dummy; } ;
struct stk1160 {int norm; int width; int height; int v4l2_dev; int udev; struct vb2_queue vb_vidq; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int ENODEV ;
 int V4L2_STD_525_60 ;
 int s_std ;
 int stk1160_set_fmt (struct stk1160*,int *) ;
 int stk1160_set_std (struct stk1160*) ;
 int v4l2_device_call_all (int *,int ,int ,int ,int) ;
 scalar_t__ vb2_is_busy (struct vb2_queue*) ;
 int video ;
 struct stk1160* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_std(struct file *file, void *priv, v4l2_std_id norm)
{
 struct stk1160 *dev = video_drvdata(file);
 struct vb2_queue *q = &dev->vb_vidq;

 if (dev->norm == norm)
  return 0;

 if (vb2_is_busy(q))
  return -EBUSY;


 if (!dev->udev)
  return -ENODEV;


 dev->width = 720;
 dev->height = (norm & V4L2_STD_525_60) ? 480 : 576;
 dev->norm = norm;

 stk1160_set_std(dev);


 stk1160_set_fmt(dev, ((void*)0));

 v4l2_device_call_all(&dev->v4l2_dev, 0, video, s_std,
   dev->norm);

 return 0;
}
