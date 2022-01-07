
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via_camera {int lock; } ;
struct file {int dummy; } ;


 int _vb2_fop_release (struct file*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_fh_is_singular_file (struct file*) ;
 int via_sensor_power_down (struct via_camera*) ;
 int viafb_release_dma () ;
 struct via_camera* video_drvdata (struct file*) ;

__attribute__((used)) static int viacam_release(struct file *filp)
{
 struct via_camera *cam = video_drvdata(filp);
 bool last_open;

 mutex_lock(&cam->lock);
 last_open = v4l2_fh_is_singular_file(filp);
 _vb2_fop_release(filp, ((void*)0));



 if (last_open) {
  via_sensor_power_down(cam);
  viafb_release_dma();
 }
 mutex_unlock(&cam->lock);
 return 0;
}
