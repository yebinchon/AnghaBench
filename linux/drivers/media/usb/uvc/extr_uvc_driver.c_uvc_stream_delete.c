
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct uvc_streaming* bmaControls; } ;
struct uvc_streaming {TYPE_1__ header; struct uvc_streaming* format; int intf; int mutex; scalar_t__ async_wq; } ;


 int destroy_workqueue (scalar_t__) ;
 int kfree (struct uvc_streaming*) ;
 int mutex_destroy (int *) ;
 int usb_put_intf (int ) ;

__attribute__((used)) static void uvc_stream_delete(struct uvc_streaming *stream)
{
 if (stream->async_wq)
  destroy_workqueue(stream->async_wq);

 mutex_destroy(&stream->mutex);

 usb_put_intf(stream->intf);

 kfree(stream->format);
 kfree(stream->header.bmaControls);
 kfree(stream);
}
