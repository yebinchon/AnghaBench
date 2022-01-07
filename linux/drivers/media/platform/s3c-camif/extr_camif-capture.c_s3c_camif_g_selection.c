
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int height; int width; int top; int left; } ;
struct v4l2_selection {scalar_t__ type; int target; TYPE_2__ r; } ;
struct file {int dummy; } ;
struct TYPE_3__ {TYPE_2__ rect; int f_height; int f_width; } ;
struct camif_vp {TYPE_1__ out_frame; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;



 struct camif_vp* video_drvdata (struct file*) ;

__attribute__((used)) static int s3c_camif_g_selection(struct file *file, void *priv,
     struct v4l2_selection *sel)
{
 struct camif_vp *vp = video_drvdata(file);

 if (sel->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;

 switch (sel->target) {
 case 129:
 case 128:
  sel->r.left = 0;
  sel->r.top = 0;
  sel->r.width = vp->out_frame.f_width;
  sel->r.height = vp->out_frame.f_height;
  return 0;

 case 130:
  sel->r = vp->out_frame.rect;
  return 0;
 }

 return -EINVAL;
}
