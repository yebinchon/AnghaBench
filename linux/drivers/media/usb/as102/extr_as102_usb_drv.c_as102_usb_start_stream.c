
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct as102_dev_t {int * stream_urb; } ;


 int MAX_STREAM_URB ;
 int as102_submit_urb_stream (struct as102_dev_t*,int ) ;
 int as102_usb_stop_stream (struct as102_dev_t*) ;

__attribute__((used)) static int as102_usb_start_stream(struct as102_dev_t *dev)
{
 int i, ret = 0;

 for (i = 0; i < MAX_STREAM_URB; i++) {
  ret = as102_submit_urb_stream(dev, dev->stream_urb[i]);
  if (ret) {
   as102_usb_stop_stream(dev);
   return ret;
  }
 }

 return 0;
}
