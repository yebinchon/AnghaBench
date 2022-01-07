
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_buffer {int dummy; } ;
struct TYPE_4__ {TYPE_1__* v4l2_dev; } ;
struct uvc_streaming {TYPE_2__ vdev; int queue; } ;
struct uvc_fh {struct uvc_streaming* stream; } ;
struct file {int dummy; } ;
struct TYPE_3__ {int mdev; } ;


 int EBUSY ;
 int uvc_has_privileges (struct uvc_fh*) ;
 int uvc_queue_buffer (int *,int ,struct v4l2_buffer*) ;

__attribute__((used)) static int uvc_ioctl_qbuf(struct file *file, void *fh, struct v4l2_buffer *buf)
{
 struct uvc_fh *handle = fh;
 struct uvc_streaming *stream = handle->stream;

 if (!uvc_has_privileges(handle))
  return -EBUSY;

 return uvc_queue_buffer(&stream->queue,
    stream->vdev.v4l2_dev->mdev, buf);
}
