
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_data_stream {int state; int buf_num; int * dma_addr; int * buf_list; int buf_size; int udev; } ;


 int USB_STATE_URB_BUF ;
 int deb_mem (char*,int) ;
 int usb_free_coherent (int ,int ,int ,int ) ;

__attribute__((used)) static int usb_free_stream_buffers(struct usb_data_stream *stream)
{
 if (stream->state & USB_STATE_URB_BUF) {
  while (stream->buf_num) {
   stream->buf_num--;
   deb_mem("freeing buffer %d\n",stream->buf_num);
   usb_free_coherent(stream->udev, stream->buf_size,
       stream->buf_list[stream->buf_num],
       stream->dma_addr[stream->buf_num]);
  }
 }

 stream->state &= ~USB_STATE_URB_BUF;

 return 0;
}
