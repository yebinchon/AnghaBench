
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_video_queue {int mutex; int queue; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vb2_queue_release (int *) ;

void uvc_queue_release(struct uvc_video_queue *queue)
{
 mutex_lock(&queue->mutex);
 vb2_queue_release(&queue->queue);
 mutex_unlock(&queue->mutex);
}
