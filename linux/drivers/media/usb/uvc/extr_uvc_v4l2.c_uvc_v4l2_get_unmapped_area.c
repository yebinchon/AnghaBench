
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_streaming {int queue; } ;
struct uvc_fh {struct uvc_streaming* stream; } ;
struct file {struct uvc_fh* private_data; } ;


 int UVC_TRACE_CALLS ;
 unsigned long uvc_queue_get_unmapped_area (int *,unsigned long) ;
 int uvc_trace (int ,char*) ;

__attribute__((used)) static unsigned long uvc_v4l2_get_unmapped_area(struct file *file,
  unsigned long addr, unsigned long len, unsigned long pgoff,
  unsigned long flags)
{
 struct uvc_fh *handle = file->private_data;
 struct uvc_streaming *stream = handle->stream;

 uvc_trace(UVC_TRACE_CALLS, "uvc_v4l2_get_unmapped_area\n");

 return uvc_queue_get_unmapped_area(&stream->queue, pgoff);
}
