
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_video_queue {int mutex; int queue; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vb2_streamoff (int *,int) ;

int uvc_queue_streamoff(struct uvc_video_queue *queue, enum v4l2_buf_type type)
{
 int ret;

 mutex_lock(&queue->mutex);
 ret = vb2_streamoff(&queue->queue, type);
 mutex_unlock(&queue->mutex);

 return ret;
}
