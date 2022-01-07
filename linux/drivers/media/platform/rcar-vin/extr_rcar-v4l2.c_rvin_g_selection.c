
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int height; int width; int top; int left; } ;
struct v4l2_selection {scalar_t__ type; int target; TYPE_3__ r; } ;
struct TYPE_5__ {int height; int width; } ;
struct TYPE_4__ {int height; int width; } ;
struct rvin_dev {TYPE_3__ compose; TYPE_2__ format; TYPE_3__ crop; TYPE_1__ source; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;






 struct rvin_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int rvin_g_selection(struct file *file, void *fh,
       struct v4l2_selection *s)
{
 struct rvin_dev *vin = video_drvdata(file);

 if (s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;

 switch (s->target) {
 case 129:
 case 128:
  s->r.left = s->r.top = 0;
  s->r.width = vin->source.width;
  s->r.height = vin->source.height;
  break;
 case 130:
  s->r = vin->crop;
  break;
 case 132:
 case 131:
  s->r.left = s->r.top = 0;
  s->r.width = vin->format.width;
  s->r.height = vin->format.height;
  break;
 case 133:
  s->r = vin->compose;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
