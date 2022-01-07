
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int numerator; int denominator; } ;
struct TYPE_5__ {TYPE_1__ timeperframe; } ;
struct TYPE_6__ {TYPE_2__ capture; } ;
struct v4l2_streamparm {scalar_t__ type; TYPE_3__ parm; } ;
struct pwc_device {int pixfmt; int height; int width; int vb_queue; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int pwc_g_parm (struct file*,void*,struct v4l2_streamparm*) ;
 int pwc_set_video_mode (struct pwc_device*,int ,int ,int ,int,int*,int ) ;
 scalar_t__ vb2_is_busy (int *) ;
 struct pwc_device* video_drvdata (struct file*) ;

__attribute__((used)) static int pwc_s_parm(struct file *file, void *fh,
        struct v4l2_streamparm *parm)
{
 struct pwc_device *pdev = video_drvdata(file);
 int compression = 0;
 int ret, fps;

 if (parm->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;




 if (parm->parm.capture.timeperframe.numerator == 0 ||
     parm->parm.capture.timeperframe.denominator == 0)
  fps = 30;
 else
  fps = parm->parm.capture.timeperframe.denominator /
        parm->parm.capture.timeperframe.numerator;

 if (vb2_is_busy(&pdev->vb_queue))
  return -EBUSY;

 ret = pwc_set_video_mode(pdev, pdev->width, pdev->height, pdev->pixfmt,
     fps, &compression, 0);

 pwc_g_parm(file, fh, parm);

 return ret;
}
