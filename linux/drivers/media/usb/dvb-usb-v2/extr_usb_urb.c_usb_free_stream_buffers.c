
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_data_stream {int state; int buf_num; int * buf_list; } ;


 int USB_STATE_URB_BUF ;
 int kfree (int ) ;

__attribute__((used)) static int usb_free_stream_buffers(struct usb_data_stream *stream)
{
 if (stream->state & USB_STATE_URB_BUF) {
  while (stream->buf_num) {
   stream->buf_num--;
   kfree(stream->buf_list[stream->buf_num]);
  }
 }

 stream->state &= ~USB_STATE_URB_BUF;

 return 0;
}
