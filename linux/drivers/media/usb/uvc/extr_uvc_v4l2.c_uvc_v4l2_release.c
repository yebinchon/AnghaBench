
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uvc_streaming {TYPE_1__* dev; int queue; } ;
struct uvc_fh {int vfh; struct uvc_streaming* stream; } ;
struct file {struct uvc_fh* private_data; } ;
struct TYPE_2__ {scalar_t__ users; int intf; int lock; } ;


 int UVC_TRACE_CALLS ;
 int kfree (struct uvc_fh*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_autopm_put_interface (int ) ;
 int uvc_dismiss_privileges (struct uvc_fh*) ;
 scalar_t__ uvc_has_privileges (struct uvc_fh*) ;
 int uvc_queue_release (int *) ;
 int uvc_status_stop (TYPE_1__*) ;
 int uvc_trace (int ,char*) ;
 int v4l2_fh_del (int *) ;
 int v4l2_fh_exit (int *) ;

__attribute__((used)) static int uvc_v4l2_release(struct file *file)
{
 struct uvc_fh *handle = file->private_data;
 struct uvc_streaming *stream = handle->stream;

 uvc_trace(UVC_TRACE_CALLS, "uvc_v4l2_release\n");


 if (uvc_has_privileges(handle))
  uvc_queue_release(&stream->queue);


 uvc_dismiss_privileges(handle);
 v4l2_fh_del(&handle->vfh);
 v4l2_fh_exit(&handle->vfh);
 kfree(handle);
 file->private_data = ((void*)0);

 mutex_lock(&stream->dev->lock);
 if (--stream->dev->users == 0)
  uvc_status_stop(stream->dev);
 mutex_unlock(&stream->dev->lock);

 usb_autopm_put_interface(stream->dev->intf);
 return 0;
}
