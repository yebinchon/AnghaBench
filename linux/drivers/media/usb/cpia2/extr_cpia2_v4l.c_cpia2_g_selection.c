
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int height; int width; int top; int left; } ;
struct v4l2_selection {scalar_t__ type; int target; TYPE_1__ r; } ;
struct file {int dummy; } ;
struct camera_data {int height; int width; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;


 struct camera_data* video_drvdata (struct file*) ;

__attribute__((used)) static int cpia2_g_selection(struct file *file, void *fh,
        struct v4l2_selection *s)
{
 struct camera_data *cam = video_drvdata(file);

 if (s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;

 switch (s->target) {
 case 129:
 case 128:
  s->r.left = 0;
  s->r.top = 0;
  s->r.width = cam->width;
  s->r.height = cam->height;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
