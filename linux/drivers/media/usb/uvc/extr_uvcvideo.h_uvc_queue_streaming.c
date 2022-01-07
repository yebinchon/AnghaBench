
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_video_queue {int queue; } ;


 int vb2_is_streaming (int *) ;

__attribute__((used)) static inline int uvc_queue_streaming(struct uvc_video_queue *queue)
{
 return vb2_is_streaming(&queue->queue);
}
