
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int flags; } ;
struct v4l2_selection {scalar_t__ target; int r; int type; } ;
struct v4l2_ioctl_ops {int dummy; } ;
struct v4l2_crop {int c; int type; } ;
struct file {int dummy; } ;


 int V4L2_FL_QUIRK_INVERTED_CROP ;
 scalar_t__ V4L2_SEL_TGT_COMPOSE ;
 scalar_t__ V4L2_SEL_TGT_CROP ;
 scalar_t__ V4L2_TYPE_IS_OUTPUT (int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int v4l_g_selection (struct v4l2_ioctl_ops const*,struct file*,void*,struct v4l2_selection*) ;
 struct video_device* video_devdata (struct file*) ;

__attribute__((used)) static int v4l_g_crop(const struct v4l2_ioctl_ops *ops,
    struct file *file, void *fh, void *arg)
{
 struct video_device *vfd = video_devdata(file);
 struct v4l2_crop *p = arg;
 struct v4l2_selection s = {
  .type = p->type,
 };
 int ret;




 if (V4L2_TYPE_IS_OUTPUT(p->type))
  s.target = V4L2_SEL_TGT_COMPOSE;
 else
  s.target = V4L2_SEL_TGT_CROP;

 if (test_bit(V4L2_FL_QUIRK_INVERTED_CROP, &vfd->flags))
  s.target = s.target == V4L2_SEL_TGT_COMPOSE ?
   V4L2_SEL_TGT_CROP : V4L2_SEL_TGT_COMPOSE;

 ret = v4l_g_selection(ops, file, fh, &s);


 if (!ret)
  p->c = s.r;
 return ret;
}
