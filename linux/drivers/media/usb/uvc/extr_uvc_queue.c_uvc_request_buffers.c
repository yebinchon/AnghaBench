
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_requestbuffers {int count; } ;
struct uvc_video_queue {int mutex; int queue; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vb2_reqbufs (int *,struct v4l2_requestbuffers*) ;

int uvc_request_buffers(struct uvc_video_queue *queue,
   struct v4l2_requestbuffers *rb)
{
 int ret;

 mutex_lock(&queue->mutex);
 ret = vb2_reqbufs(&queue->queue, rb);
 mutex_unlock(&queue->mutex);

 return ret ? ret : rb->count;
}
