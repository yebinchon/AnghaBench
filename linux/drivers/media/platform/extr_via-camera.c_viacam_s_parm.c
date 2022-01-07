
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via_camera {int sensor; } ;
struct v4l2_streamparm {int dummy; } ;
struct file {int dummy; } ;


 int v4l2_s_parm_cap (int ,int ,struct v4l2_streamparm*) ;
 int video_devdata (struct file*) ;
 struct via_camera* video_drvdata (struct file*) ;

__attribute__((used)) static int viacam_s_parm(struct file *filp, void *priv,
  struct v4l2_streamparm *parm)
{
 struct via_camera *cam = video_drvdata(filp);

 return v4l2_s_parm_cap(video_devdata(filp), cam->sensor, parm);
}
