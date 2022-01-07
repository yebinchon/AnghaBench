
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_video_queue {int mutex; int queue; } ;
struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vb2_poll (int *,struct file*,int *) ;

__poll_t uvc_queue_poll(struct uvc_video_queue *queue, struct file *file,
       poll_table *wait)
{
 __poll_t ret;

 mutex_lock(&queue->mutex);
 ret = vb2_poll(&queue->queue, file, wait);
 mutex_unlock(&queue->mutex);

 return ret;
}
