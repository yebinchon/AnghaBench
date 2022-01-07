
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_streaming {int mutex; int queue; } ;
struct uvc_fh {struct uvc_streaming* stream; } ;
struct file {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int EBUSY ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int uvc_has_privileges (struct uvc_fh*) ;
 int uvc_queue_streamon (int *,int) ;

__attribute__((used)) static int uvc_ioctl_streamon(struct file *file, void *fh,
         enum v4l2_buf_type type)
{
 struct uvc_fh *handle = fh;
 struct uvc_streaming *stream = handle->stream;
 int ret;

 if (!uvc_has_privileges(handle))
  return -EBUSY;

 mutex_lock(&stream->mutex);
 ret = uvc_queue_streamon(&stream->queue, type);
 mutex_unlock(&stream->mutex);

 return ret;
}
