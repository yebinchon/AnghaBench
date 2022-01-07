
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int height; int width; int top; int left; } ;
struct v4l2_selection {scalar_t__ type; int target; TYPE_1__ r; } ;
struct flite_frame {TYPE_1__ rect; int f_height; int f_width; } ;
struct fimc_lite {struct flite_frame out_frame; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;



 struct fimc_lite* video_drvdata (struct file*) ;

__attribute__((used)) static int fimc_lite_g_selection(struct file *file, void *fh,
     struct v4l2_selection *sel)
{
 struct fimc_lite *fimc = video_drvdata(file);
 struct flite_frame *f = &fimc->out_frame;

 if (sel->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;

 switch (sel->target) {
 case 129:
 case 128:
  sel->r.left = 0;
  sel->r.top = 0;
  sel->r.width = f->f_width;
  sel->r.height = f->f_height;
  return 0;

 case 130:
  sel->r = f->rect;
  return 0;
 }

 return -EINVAL;
}
