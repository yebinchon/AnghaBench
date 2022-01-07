
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isp_video_fh {int queue; } ;
struct TYPE_2__ {int entity; } ;
struct isp_video {int type; int error; int stream_lock; TYPE_1__ video; int * queue; int queue_lock; } ;
struct isp_pipeline {int state; int ent_enum; int lock; } ;
struct file {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;
typedef enum isp_pipeline_state { ____Placeholder_isp_pipeline_state } isp_pipeline_state ;


 int EINVAL ;
 int ISP_PIPELINE_QUEUE_INPUT ;
 int ISP_PIPELINE_QUEUE_OUTPUT ;
 int ISP_PIPELINE_STREAM_INPUT ;
 int ISP_PIPELINE_STREAM_OUTPUT ;
 int ISP_PIPELINE_STREAM_STOPPED ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int media_entity_enum_cleanup (int *) ;
 int media_pipeline_stop (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int omap3isp_pipeline_set_stream (struct isp_pipeline*,int ) ;
 int omap3isp_video_cancel_stream (struct isp_video*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct isp_pipeline* to_isp_pipeline (int *) ;
 struct isp_video_fh* to_isp_video_fh (void*) ;
 unsigned int vb2_is_streaming (int *) ;
 int vb2_streamoff (int *,int) ;
 struct isp_video* video_drvdata (struct file*) ;

__attribute__((used)) static int
isp_video_streamoff(struct file *file, void *fh, enum v4l2_buf_type type)
{
 struct isp_video_fh *vfh = to_isp_video_fh(fh);
 struct isp_video *video = video_drvdata(file);
 struct isp_pipeline *pipe = to_isp_pipeline(&video->video.entity);
 enum isp_pipeline_state state;
 unsigned int streaming;
 unsigned long flags;

 if (type != video->type)
  return -EINVAL;

 mutex_lock(&video->stream_lock);


 mutex_lock(&video->queue_lock);
 streaming = vb2_is_streaming(&vfh->queue);
 mutex_unlock(&video->queue_lock);

 if (!streaming)
  goto done;


 if (video->type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
  state = ISP_PIPELINE_STREAM_OUTPUT
        | ISP_PIPELINE_QUEUE_OUTPUT;
 else
  state = ISP_PIPELINE_STREAM_INPUT
        | ISP_PIPELINE_QUEUE_INPUT;

 spin_lock_irqsave(&pipe->lock, flags);
 pipe->state &= ~state;
 spin_unlock_irqrestore(&pipe->lock, flags);


 omap3isp_pipeline_set_stream(pipe, ISP_PIPELINE_STREAM_STOPPED);
 omap3isp_video_cancel_stream(video);

 mutex_lock(&video->queue_lock);
 vb2_streamoff(&vfh->queue, type);
 mutex_unlock(&video->queue_lock);
 video->queue = ((void*)0);
 video->error = 0;


 media_pipeline_stop(&video->video.entity);

 media_entity_enum_cleanup(&pipe->ent_enum);

done:
 mutex_unlock(&video->stream_lock);
 return 0;
}
