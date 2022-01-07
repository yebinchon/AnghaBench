
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int height; int width; int left; int top; } ;
struct v4l2_selection {scalar_t__ type; int target; TYPE_1__ r; } ;
struct TYPE_4__ {int height; int width; } ;
struct v4l2_dv_timings {TYPE_2__ bt; } ;
struct file {int dummy; } ;
struct cobalt_stream {int input; int sd; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;


 struct v4l2_dv_timings cea1080p60 ;
 int g_dv_timings ;
 int v4l2_subdev_call (int ,int ,int ,struct v4l2_dv_timings*) ;
 int video ;
 struct cobalt_stream* video_drvdata (struct file*) ;

__attribute__((used)) static int cobalt_g_selection(struct file *file, void *fh,
         struct v4l2_selection *sel)
{
 struct cobalt_stream *s = video_drvdata(file);
 struct v4l2_dv_timings timings;
 int err = 0;

 if (sel->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;

 if (s->input == 1)
  timings = cea1080p60;
 else
  err = v4l2_subdev_call(s->sd, video, g_dv_timings, &timings);

 if (err)
  return err;

 switch (sel->target) {
 case 129:
 case 128:
  sel->r.top = 0;
  sel->r.left = 0;
  sel->r.width = timings.bt.width;
  sel->r.height = timings.bt.height;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
