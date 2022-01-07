
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int entity; } ;
struct TYPE_6__ {scalar_t__ owner; } ;
struct vsp1_video {TYPE_2__ video; TYPE_3__ queue; TYPE_1__* vsp1; } ;
struct vsp1_pipeline {int pipe; } ;
struct v4l2_fh {int vdev; } ;
struct media_device {int graph_mutex; } ;
struct file {scalar_t__ private_data; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;
struct TYPE_4__ {struct media_device media_dev; } ;


 int EBUSY ;
 scalar_t__ IS_ERR (struct vsp1_pipeline*) ;
 int PTR_ERR (struct vsp1_pipeline*) ;
 int __media_pipeline_start (int *,int *) ;
 int media_pipeline_stop (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct vsp1_video* to_vsp1_video (int ) ;
 int vb2_streamon (TYPE_3__*,int) ;
 struct vsp1_pipeline* vsp1_video_pipeline_get (struct vsp1_video*) ;
 int vsp1_video_pipeline_put (struct vsp1_pipeline*) ;
 int vsp1_video_verify_format (struct vsp1_video*) ;

__attribute__((used)) static int
vsp1_video_streamon(struct file *file, void *fh, enum v4l2_buf_type type)
{
 struct v4l2_fh *vfh = file->private_data;
 struct vsp1_video *video = to_vsp1_video(vfh->vdev);
 struct media_device *mdev = &video->vsp1->media_dev;
 struct vsp1_pipeline *pipe;
 int ret;

 if (video->queue.owner && video->queue.owner != file->private_data)
  return -EBUSY;






 mutex_lock(&mdev->graph_mutex);

 pipe = vsp1_video_pipeline_get(video);
 if (IS_ERR(pipe)) {
  mutex_unlock(&mdev->graph_mutex);
  return PTR_ERR(pipe);
 }

 ret = __media_pipeline_start(&video->video.entity, &pipe->pipe);
 if (ret < 0) {
  mutex_unlock(&mdev->graph_mutex);
  goto err_pipe;
 }

 mutex_unlock(&mdev->graph_mutex);





 ret = vsp1_video_verify_format(video);
 if (ret < 0)
  goto err_stop;


 ret = vb2_streamon(&video->queue, type);
 if (ret < 0)
  goto err_stop;

 return 0;

err_stop:
 media_pipeline_stop(&video->video.entity);
err_pipe:
 vsp1_video_pipeline_put(pipe);
 return ret;
}
