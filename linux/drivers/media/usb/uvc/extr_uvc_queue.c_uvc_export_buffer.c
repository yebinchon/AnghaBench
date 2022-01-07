
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_exportbuffer {int dummy; } ;
struct uvc_video_queue {int mutex; int queue; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vb2_expbuf (int *,struct v4l2_exportbuffer*) ;

int uvc_export_buffer(struct uvc_video_queue *queue,
        struct v4l2_exportbuffer *exp)
{
 int ret;

 mutex_lock(&queue->mutex);
 ret = vb2_expbuf(&queue->queue, exp);
 mutex_unlock(&queue->mutex);

 return ret;
}
