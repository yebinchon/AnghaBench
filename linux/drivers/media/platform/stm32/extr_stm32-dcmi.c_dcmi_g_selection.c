
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int height; int width; int left; int top; } ;
struct v4l2_selection {scalar_t__ type; int target; TYPE_1__ r; } ;
struct TYPE_6__ {int height; int width; } ;
struct TYPE_7__ {TYPE_2__ pix; } ;
struct TYPE_8__ {TYPE_3__ fmt; } ;
struct stm32_dcmi {TYPE_4__ fmt; TYPE_1__ crop; int do_crop; TYPE_1__ sd_bounds; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;



 struct stm32_dcmi* video_drvdata (struct file*) ;

__attribute__((used)) static int dcmi_g_selection(struct file *file, void *fh,
       struct v4l2_selection *s)
{
 struct stm32_dcmi *dcmi = video_drvdata(file);

 if (s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;

 switch (s->target) {
 case 128:
 case 129:
  s->r = dcmi->sd_bounds;
  return 0;
 case 130:
  if (dcmi->do_crop) {
   s->r = dcmi->crop;
  } else {
   s->r.top = 0;
   s->r.left = 0;
   s->r.width = dcmi->fmt.fmt.pix.width;
   s->r.height = dcmi->fmt.fmt.pix.height;
  }
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
