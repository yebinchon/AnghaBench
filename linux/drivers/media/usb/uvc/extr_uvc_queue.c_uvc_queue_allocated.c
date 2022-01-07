
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_video_queue {int mutex; int queue; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vb2_is_busy (int *) ;

int uvc_queue_allocated(struct uvc_video_queue *queue)
{
 int allocated;

 mutex_lock(&queue->mutex);
 allocated = vb2_is_busy(&queue->queue);
 mutex_unlock(&queue->mutex);

 return allocated;
}
