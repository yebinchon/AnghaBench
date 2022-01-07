
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct uvc_streaming {int queue; } ;
struct uvc_fh {struct uvc_streaming* stream; } ;
struct file {struct uvc_fh* private_data; } ;


 int UVC_TRACE_CALLS ;
 int uvc_queue_mmap (int *,struct vm_area_struct*) ;
 int uvc_trace (int ,char*) ;

__attribute__((used)) static int uvc_v4l2_mmap(struct file *file, struct vm_area_struct *vma)
{
 struct uvc_fh *handle = file->private_data;
 struct uvc_streaming *stream = handle->stream;

 uvc_trace(UVC_TRACE_CALLS, "uvc_v4l2_mmap\n");

 return uvc_queue_mmap(&stream->queue, vma);
}
