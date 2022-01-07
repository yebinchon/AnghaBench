
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcam_camera {scalar_t__ buffer_mode; int s_mutex; } ;
struct file {int dummy; } ;


 scalar_t__ B_vmalloc ;
 int _vb2_fop_release (struct file*,int *) ;
 scalar_t__ alloc_bufs_at_read ;
 int core ;
 int mcam_clk_disable (struct mcam_camera*) ;
 int mcam_disable_mipi (struct mcam_camera*) ;
 int mcam_free_dma_bufs (struct mcam_camera*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int s_power ;
 int sensor_call (struct mcam_camera*,int ,int ,int ) ;
 int v4l2_fh_is_singular_file (struct file*) ;
 struct mcam_camera* video_drvdata (struct file*) ;

__attribute__((used)) static int mcam_v4l_release(struct file *filp)
{
 struct mcam_camera *cam = video_drvdata(filp);
 bool last_open;

 mutex_lock(&cam->s_mutex);
 last_open = v4l2_fh_is_singular_file(filp);
 _vb2_fop_release(filp, ((void*)0));
 if (last_open) {
  mcam_disable_mipi(cam);
  sensor_call(cam, core, s_power, 0);
  mcam_clk_disable(cam);
  if (cam->buffer_mode == B_vmalloc && alloc_bufs_at_read)
   mcam_free_dma_bufs(cam);
 }

 mutex_unlock(&cam->s_mutex);
 return 0;
}
