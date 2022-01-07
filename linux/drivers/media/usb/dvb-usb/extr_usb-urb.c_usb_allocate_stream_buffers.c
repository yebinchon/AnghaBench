
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_data_stream {int buf_num; unsigned long buf_size; int state; int ** buf_list; scalar_t__* dma_addr; int udev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int USB_STATE_URB_BUF ;
 int deb_mem (char*,...) ;
 int memset (int *,int ,unsigned long) ;
 int * usb_alloc_coherent (int ,unsigned long,int ,scalar_t__*) ;
 int usb_free_stream_buffers (struct usb_data_stream*) ;

__attribute__((used)) static int usb_allocate_stream_buffers(struct usb_data_stream *stream, int num, unsigned long size)
{
 stream->buf_num = 0;
 stream->buf_size = size;

 deb_mem("all in all I will use %lu bytes for streaming\n",num*size);

 for (stream->buf_num = 0; stream->buf_num < num; stream->buf_num++) {
  deb_mem("allocating buffer %d\n",stream->buf_num);
  if (( stream->buf_list[stream->buf_num] =
     usb_alloc_coherent(stream->udev, size, GFP_KERNEL,
     &stream->dma_addr[stream->buf_num]) ) == ((void*)0)) {
   deb_mem("not enough memory for urb-buffer allocation.\n");
   usb_free_stream_buffers(stream);
   return -ENOMEM;
  }
  deb_mem("buffer %d: %p (dma: %Lu)\n",
   stream->buf_num,
stream->buf_list[stream->buf_num], (long long)stream->dma_addr[stream->buf_num]);
  memset(stream->buf_list[stream->buf_num],0,size);
  stream->state |= USB_STATE_URB_BUF;
 }
 deb_mem("allocation successful\n");

 return 0;
}
