
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int entity; } ;
struct sun6i_video {int lock; int csi; TYPE_1__ vdev; } ;
struct file {int dummy; } ;


 int _vb2_fop_release (struct file*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sun6i_csi_set_power (int ,int) ;
 int v4l2_fh_is_singular_file (struct file*) ;
 int v4l2_pipeline_pm_use (int *,int ) ;
 struct sun6i_video* video_drvdata (struct file*) ;

__attribute__((used)) static int sun6i_video_close(struct file *file)
{
 struct sun6i_video *video = video_drvdata(file);
 bool last_fh;

 mutex_lock(&video->lock);

 last_fh = v4l2_fh_is_singular_file(file);

 _vb2_fop_release(file, ((void*)0));

 v4l2_pipeline_pm_use(&video->vdev.entity, 0);

 if (last_fh)
  sun6i_csi_set_power(video->csi, 0);

 mutex_unlock(&video->lock);

 return 0;
}
