
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_buffer {int dummy; } ;
struct uvc_video_queue {int mutex; int queue; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vb2_dqbuf (int *,struct v4l2_buffer*,int) ;

int uvc_dequeue_buffer(struct uvc_video_queue *queue, struct v4l2_buffer *buf,
         int nonblocking)
{
 int ret;

 mutex_lock(&queue->mutex);
 ret = vb2_dqbuf(&queue->queue, buf, nonblocking);
 mutex_unlock(&queue->mutex);

 return ret;
}
