
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uvc_streaming {int chain; int vdev; TYPE_1__* dev; } ;
struct uvc_fh {int state; struct uvc_streaming* stream; int chain; int vfh; } ;
struct file {struct uvc_fh* private_data; } ;
struct TYPE_2__ {scalar_t__ users; int lock; int intf; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int UVC_HANDLE_PASSIVE ;
 int UVC_TRACE_CALLS ;
 int kfree (struct uvc_fh*) ;
 struct uvc_fh* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_autopm_get_interface (int ) ;
 int usb_autopm_put_interface (int ) ;
 int uvc_status_start (TYPE_1__*,int ) ;
 int uvc_trace (int ,char*) ;
 int v4l2_fh_add (int *) ;
 int v4l2_fh_init (int *,int *) ;
 struct uvc_streaming* video_drvdata (struct file*) ;

__attribute__((used)) static int uvc_v4l2_open(struct file *file)
{
 struct uvc_streaming *stream;
 struct uvc_fh *handle;
 int ret = 0;

 uvc_trace(UVC_TRACE_CALLS, "uvc_v4l2_open\n");
 stream = video_drvdata(file);

 ret = usb_autopm_get_interface(stream->dev->intf);
 if (ret < 0)
  return ret;


 handle = kzalloc(sizeof(*handle), GFP_KERNEL);
 if (handle == ((void*)0)) {
  usb_autopm_put_interface(stream->dev->intf);
  return -ENOMEM;
 }

 mutex_lock(&stream->dev->lock);
 if (stream->dev->users == 0) {
  ret = uvc_status_start(stream->dev, GFP_KERNEL);
  if (ret < 0) {
   mutex_unlock(&stream->dev->lock);
   usb_autopm_put_interface(stream->dev->intf);
   kfree(handle);
   return ret;
  }
 }

 stream->dev->users++;
 mutex_unlock(&stream->dev->lock);

 v4l2_fh_init(&handle->vfh, &stream->vdev);
 v4l2_fh_add(&handle->vfh);
 handle->chain = stream->chain;
 handle->stream = stream;
 handle->state = UVC_HANDLE_PASSIVE;
 file->private_data = handle;

 return 0;
}
