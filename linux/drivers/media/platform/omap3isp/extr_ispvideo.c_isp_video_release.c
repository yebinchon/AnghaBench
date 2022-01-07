
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_fh {int dummy; } ;
struct isp_video_fh {int queue; } ;
struct TYPE_2__ {int entity; } ;
struct isp_video {int isp; TYPE_1__ video; int queue_lock; int type; } ;
struct file {struct v4l2_fh* private_data; } ;


 int isp_video_streamoff (struct file*,struct v4l2_fh*,int ) ;
 int kfree (struct isp_video_fh*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int omap3isp_put (int ) ;
 struct isp_video_fh* to_isp_video_fh (struct v4l2_fh*) ;
 int v4l2_fh_del (struct v4l2_fh*) ;
 int v4l2_fh_exit (struct v4l2_fh*) ;
 int v4l2_pipeline_pm_use (int *,int ) ;
 int vb2_queue_release (int *) ;
 struct isp_video* video_drvdata (struct file*) ;

__attribute__((used)) static int isp_video_release(struct file *file)
{
 struct isp_video *video = video_drvdata(file);
 struct v4l2_fh *vfh = file->private_data;
 struct isp_video_fh *handle = to_isp_video_fh(vfh);


 isp_video_streamoff(file, vfh, video->type);

 mutex_lock(&video->queue_lock);
 vb2_queue_release(&handle->queue);
 mutex_unlock(&video->queue_lock);

 v4l2_pipeline_pm_use(&video->video.entity, 0);


 v4l2_fh_del(vfh);
 v4l2_fh_exit(vfh);
 kfree(handle);
 file->private_data = ((void*)0);

 omap3isp_put(video->isp);

 return 0;
}
