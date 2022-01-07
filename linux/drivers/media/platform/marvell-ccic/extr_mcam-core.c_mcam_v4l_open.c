
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcam_camera {int s_mutex; } ;
struct file {int dummy; } ;


 int __mcam_cam_reset (struct mcam_camera*) ;
 int core ;
 int mcam_clk_enable (struct mcam_camera*) ;
 int mcam_set_config_needed (struct mcam_camera*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int s_power ;
 int sensor_call (struct mcam_camera*,int ,int ,int) ;
 scalar_t__ v4l2_fh_is_singular_file (struct file*) ;
 int v4l2_fh_open (struct file*) ;
 int v4l2_fh_release (struct file*) ;
 struct mcam_camera* video_drvdata (struct file*) ;

__attribute__((used)) static int mcam_v4l_open(struct file *filp)
{
 struct mcam_camera *cam = video_drvdata(filp);
 int ret;

 mutex_lock(&cam->s_mutex);
 ret = v4l2_fh_open(filp);
 if (ret)
  goto out;
 if (v4l2_fh_is_singular_file(filp)) {
  ret = sensor_call(cam, core, s_power, 1);
  if (ret)
   goto out;
  mcam_clk_enable(cam);
  __mcam_cam_reset(cam);
  mcam_set_config_needed(cam, 1);
 }
out:
 mutex_unlock(&cam->s_mutex);
 if (ret)
  v4l2_fh_release(filp);
 return ret;
}
