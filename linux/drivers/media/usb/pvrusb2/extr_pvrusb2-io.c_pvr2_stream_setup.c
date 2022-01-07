
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct pvr2_stream {int endpoint; unsigned int fail_tolerance; int mutex; struct usb_device* dev; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pvr2_stream_internal_flush (struct pvr2_stream*) ;

void pvr2_stream_setup(struct pvr2_stream *sp,
         struct usb_device *dev,
         int endpoint,
         unsigned int tolerance)
{
 mutex_lock(&sp->mutex); do {
  pvr2_stream_internal_flush(sp);
  sp->dev = dev;
  sp->endpoint = endpoint;
  sp->fail_tolerance = tolerance;
 } while (0); mutex_unlock(&sp->mutex);
}
