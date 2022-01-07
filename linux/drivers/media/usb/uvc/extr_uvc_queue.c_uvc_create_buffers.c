
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_create_buffers {int dummy; } ;
struct uvc_video_queue {int mutex; int queue; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vb2_create_bufs (int *,struct v4l2_create_buffers*) ;

int uvc_create_buffers(struct uvc_video_queue *queue,
         struct v4l2_create_buffers *cb)
{
 int ret;

 mutex_lock(&queue->mutex);
 ret = vb2_create_bufs(&queue->queue, cb);
 mutex_unlock(&queue->mutex);

 return ret;
}
