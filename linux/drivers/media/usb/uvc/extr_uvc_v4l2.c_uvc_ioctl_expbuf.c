
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_exportbuffer {int dummy; } ;
struct uvc_streaming {int queue; } ;
struct uvc_fh {struct uvc_streaming* stream; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int uvc_export_buffer (int *,struct v4l2_exportbuffer*) ;
 int uvc_has_privileges (struct uvc_fh*) ;

__attribute__((used)) static int uvc_ioctl_expbuf(struct file *file, void *fh,
       struct v4l2_exportbuffer *exp)
{
 struct uvc_fh *handle = fh;
 struct uvc_streaming *stream = handle->stream;

 if (!uvc_has_privileges(handle))
  return -EBUSY;

 return uvc_export_buffer(&stream->queue, exp);
}
