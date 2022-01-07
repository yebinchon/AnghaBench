
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int height; int width; int top; int left; } ;
struct vpfe_device {scalar_t__ std_index; TYPE_1__ crop; } ;
struct v4l2_selection {scalar_t__ type; int target; TYPE_1__ r; } ;
struct file {int dummy; } ;
struct TYPE_5__ {int height; int width; } ;


 scalar_t__ ARRAY_SIZE (TYPE_2__*) ;
 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;



 struct vpfe_device* video_drvdata (struct file*) ;
 TYPE_2__* vpfe_standards ;

__attribute__((used)) static int
vpfe_g_selection(struct file *file, void *fh, struct v4l2_selection *s)
{
 struct vpfe_device *vpfe = video_drvdata(file);

 if (s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE ||
     vpfe->std_index >= ARRAY_SIZE(vpfe_standards))
  return -EINVAL;

 switch (s->target) {
 case 129:
 case 128:
  s->r.left = 0;
  s->r.top = 0;
  s->r.width = vpfe_standards[vpfe->std_index].width;
  s->r.height = vpfe_standards[vpfe->std_index].height;
  break;

 case 130:
  s->r = vpfe->crop;
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
