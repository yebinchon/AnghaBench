
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int readbuffers; } ;
struct TYPE_4__ {TYPE_1__ capture; } ;
struct v4l2_streamparm {TYPE_2__ parm; } ;
struct mcam_camera {int sensor; } ;
struct file {int dummy; } ;


 int n_dma_bufs ;
 int v4l2_s_parm_cap (int ,int ,struct v4l2_streamparm*) ;
 int video_devdata (struct file*) ;
 struct mcam_camera* video_drvdata (struct file*) ;

__attribute__((used)) static int mcam_vidioc_s_parm(struct file *filp, void *priv,
  struct v4l2_streamparm *a)
{
 struct mcam_camera *cam = video_drvdata(filp);
 int ret;

 ret = v4l2_s_parm_cap(video_devdata(filp), cam->sensor, a);
 a->parm.capture.readbuffers = n_dma_bufs;
 return ret;
}
