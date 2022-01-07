
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct as102_dev_t {int * stream_urb; } ;


 int MAX_STREAM_URB ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void as102_usb_stop_stream(struct as102_dev_t *dev)
{
 int i;

 for (i = 0; i < MAX_STREAM_URB; i++)
  usb_kill_urb(dev->stream_urb[i]);
}
