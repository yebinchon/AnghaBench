
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {int dummy; } ;
struct uvc_streaming {int dummy; } ;
struct uvc_fh {struct uvc_streaming* stream; } ;
struct file {int dummy; } ;


 int uvc_ioctl_enum_fmt (struct uvc_streaming*,struct v4l2_fmtdesc*) ;

__attribute__((used)) static int uvc_ioctl_enum_fmt_vid_cap(struct file *file, void *fh,
          struct v4l2_fmtdesc *fmt)
{
 struct uvc_fh *handle = fh;
 struct uvc_streaming *stream = handle->stream;

 return uvc_ioctl_enum_fmt(stream, fmt);
}
