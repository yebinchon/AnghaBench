
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via_camera {int lock; int flags; } ;
struct file {int dummy; } ;


 int CF_CONFIG_NEEDED ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ v4l2_fh_is_singular_file (struct file*) ;
 int v4l2_fh_open (struct file*) ;
 int v4l2_fh_release (struct file*) ;
 int via_sensor_power_up (struct via_camera*) ;
 int viafb_request_dma () ;
 struct via_camera* video_drvdata (struct file*) ;

__attribute__((used)) static int viacam_open(struct file *filp)
{
 struct via_camera *cam = video_drvdata(filp);
 int ret;





 mutex_lock(&cam->lock);
 ret = v4l2_fh_open(filp);
 if (ret)
  goto out;
 if (v4l2_fh_is_singular_file(filp)) {
  ret = viafb_request_dma();

  if (ret) {
   v4l2_fh_release(filp);
   goto out;
  }
  via_sensor_power_up(cam);
  set_bit(CF_CONFIG_NEEDED, &cam->flags);
 }
out:
 mutex_unlock(&cam->lock);
 return ret;
}
