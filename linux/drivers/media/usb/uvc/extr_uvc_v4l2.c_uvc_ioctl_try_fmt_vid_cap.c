
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_format {int dummy; } ;
struct uvc_streaming_control {int dummy; } ;
struct uvc_streaming {int dummy; } ;
struct uvc_fh {struct uvc_streaming* stream; } ;
struct file {int dummy; } ;


 int uvc_v4l2_try_format (struct uvc_streaming*,struct v4l2_format*,struct uvc_streaming_control*,int *,int *) ;

__attribute__((used)) static int uvc_ioctl_try_fmt_vid_cap(struct file *file, void *fh,
         struct v4l2_format *fmt)
{
 struct uvc_fh *handle = fh;
 struct uvc_streaming *stream = handle->stream;
 struct uvc_streaming_control probe;

 return uvc_v4l2_try_format(stream, fmt, &probe, ((void*)0), ((void*)0));
}
