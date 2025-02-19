
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_buffer {int dummy; } ;
struct uvc_video_queue {int mutex; int queue; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vb2_querybuf (int *,struct v4l2_buffer*) ;

int uvc_query_buffer(struct uvc_video_queue *queue, struct v4l2_buffer *buf)
{
 int ret;

 mutex_lock(&queue->mutex);
 ret = vb2_querybuf(&queue->queue, buf);
 mutex_unlock(&queue->mutex);

 return ret;
}
