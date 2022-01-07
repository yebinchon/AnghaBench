
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_data_stream {int dummy; } ;


 int usb_free_stream_buffers (struct usb_data_stream*) ;
 int usb_urb_free_urbs (struct usb_data_stream*) ;

int usb_urb_exitv2(struct usb_data_stream *stream)
{
 usb_urb_free_urbs(stream);
 usb_free_stream_buffers(stream);

 return 0;
}
