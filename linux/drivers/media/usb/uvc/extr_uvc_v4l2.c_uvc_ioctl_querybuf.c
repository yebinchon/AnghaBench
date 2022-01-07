
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_buffer {int dummy; } ;
struct uvc_streaming {int queue; } ;
struct uvc_fh {struct uvc_streaming* stream; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int uvc_has_privileges (struct uvc_fh*) ;
 int uvc_query_buffer (int *,struct v4l2_buffer*) ;

__attribute__((used)) static int uvc_ioctl_querybuf(struct file *file, void *fh,
         struct v4l2_buffer *buf)
{
 struct uvc_fh *handle = fh;
 struct uvc_streaming *stream = handle->stream;

 if (!uvc_has_privileges(handle))
  return -EBUSY;

 return uvc_query_buffer(&stream->queue, buf);
}
