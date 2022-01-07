
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_streamparm {int dummy; } ;
struct uvc_streaming {int dummy; } ;
struct uvc_fh {struct uvc_streaming* stream; } ;
struct file {int dummy; } ;


 int uvc_acquire_privileges (struct uvc_fh*) ;
 int uvc_v4l2_set_streamparm (struct uvc_streaming*,struct v4l2_streamparm*) ;

__attribute__((used)) static int uvc_ioctl_s_parm(struct file *file, void *fh,
       struct v4l2_streamparm *parm)
{
 struct uvc_fh *handle = fh;
 struct uvc_streaming *stream = handle->stream;
 int ret;

 ret = uvc_acquire_privileges(handle);
 if (ret < 0)
  return ret;

 return uvc_v4l2_set_streamparm(stream, parm);
}
