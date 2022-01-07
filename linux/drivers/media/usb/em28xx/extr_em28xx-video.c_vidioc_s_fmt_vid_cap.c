
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int height; int width; int pixelformat; } ;
struct TYPE_3__ {TYPE_2__ pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct em28xx_v4l2 {int vb_vidq; } ;
struct em28xx {struct em28xx_v4l2* v4l2; } ;


 int EBUSY ;
 int em28xx_set_video_format (struct em28xx*,int ,int ,int ) ;
 scalar_t__ vb2_is_busy (int *) ;
 struct em28xx* video_drvdata (struct file*) ;
 int vidioc_try_fmt_vid_cap (struct file*,void*,struct v4l2_format*) ;

__attribute__((used)) static int vidioc_s_fmt_vid_cap(struct file *file, void *priv,
    struct v4l2_format *f)
{
 struct em28xx *dev = video_drvdata(file);
 struct em28xx_v4l2 *v4l2 = dev->v4l2;

 if (vb2_is_busy(&v4l2->vb_vidq))
  return -EBUSY;

 vidioc_try_fmt_vid_cap(file, priv, f);

 return em28xx_set_video_format(dev, f->fmt.pix.pixelformat,
    f->fmt.pix.width, f->fmt.pix.height);
}
