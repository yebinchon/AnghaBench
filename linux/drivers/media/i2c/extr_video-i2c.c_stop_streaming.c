
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_i2c_data {int regmap; int * kthread_vid_cap; } ;
struct vb2_queue {int dummy; } ;


 int VB2_BUF_STATE_ERROR ;
 int kthread_stop (int *) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int regmap_get_device (int ) ;
 struct video_i2c_data* vb2_get_drv_priv (struct vb2_queue*) ;
 int video_i2c_del_list (struct vb2_queue*,int ) ;

__attribute__((used)) static void stop_streaming(struct vb2_queue *vq)
{
 struct video_i2c_data *data = vb2_get_drv_priv(vq);

 if (data->kthread_vid_cap == ((void*)0))
  return;

 kthread_stop(data->kthread_vid_cap);
 data->kthread_vid_cap = ((void*)0);
 pm_runtime_mark_last_busy(regmap_get_device(data->regmap));
 pm_runtime_put_autosuspend(regmap_get_device(data->regmap));

 video_i2c_del_list(vq, VB2_BUF_STATE_ERROR);
}
