
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct v4l2_captureparm {int timeperframe; int readbuffers; int capability; } ;
struct TYPE_8__ {struct v4l2_captureparm capture; } ;
struct v4l2_streamparm {scalar_t__ type; TYPE_3__ parm; } ;
struct file {int dummy; } ;
struct TYPE_6__ {scalar_t__ frame_rate; } ;
struct TYPE_7__ {TYPE_1__ vp_params; } ;
struct camera_data {TYPE_2__ params; int num_frames; } ;
struct TYPE_9__ {scalar_t__ value; int period; } ;


 int ARRAY_SIZE (TYPE_4__*) ;
 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_CAP_TIMEPERFRAME ;
 TYPE_4__* framerate_controls ;
 struct camera_data* video_drvdata (struct file*) ;

__attribute__((used)) static int cpia2_g_parm(struct file *file, void *fh, struct v4l2_streamparm *p)
{
 struct camera_data *cam = video_drvdata(file);
 struct v4l2_captureparm *cap = &p->parm.capture;
 int i;

 if (p->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;

 cap->capability = V4L2_CAP_TIMEPERFRAME;
 cap->readbuffers = cam->num_frames;
 for (i = 0; i < ARRAY_SIZE(framerate_controls); i++)
  if (cam->params.vp_params.frame_rate == framerate_controls[i].value) {
   cap->timeperframe = framerate_controls[i].period;
   break;
  }
 return 0;
}
