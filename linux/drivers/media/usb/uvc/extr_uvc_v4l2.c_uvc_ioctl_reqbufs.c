
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_requestbuffers {int dummy; } ;
struct uvc_streaming {int mutex; int queue; } ;
struct uvc_fh {struct uvc_streaming* stream; } ;
struct file {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int uvc_acquire_privileges (struct uvc_fh*) ;
 int uvc_dismiss_privileges (struct uvc_fh*) ;
 int uvc_request_buffers (int *,struct v4l2_requestbuffers*) ;

__attribute__((used)) static int uvc_ioctl_reqbufs(struct file *file, void *fh,
        struct v4l2_requestbuffers *rb)
{
 struct uvc_fh *handle = fh;
 struct uvc_streaming *stream = handle->stream;
 int ret;

 ret = uvc_acquire_privileges(handle);
 if (ret < 0)
  return ret;

 mutex_lock(&stream->mutex);
 ret = uvc_request_buffers(&stream->queue, rb);
 mutex_unlock(&stream->mutex);
 if (ret < 0)
  return ret;

 if (ret == 0)
  uvc_dismiss_privileges(handle);

 return 0;
}
