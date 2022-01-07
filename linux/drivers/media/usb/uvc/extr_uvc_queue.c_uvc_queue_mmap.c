
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct uvc_video_queue {int queue; } ;


 int vb2_mmap (int *,struct vm_area_struct*) ;

int uvc_queue_mmap(struct uvc_video_queue *queue, struct vm_area_struct *vma)
{
 return vb2_mmap(&queue->queue, vma);
}
