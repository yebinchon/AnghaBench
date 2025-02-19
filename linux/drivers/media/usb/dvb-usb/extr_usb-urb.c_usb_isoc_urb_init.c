
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int framesize; int framesperurb; int interval; } ;
struct TYPE_7__ {TYPE_2__ isoc; } ;
struct TYPE_8__ {int count; TYPE_3__ u; int endpoint; } ;
struct usb_data_stream {int urbs_initialized; TYPE_4__ props; int * dma_addr; int * buf_list; int buf_size; int udev; struct urb** urb_list; } ;
struct urb {int transfer_flags; int number_of_packets; TYPE_1__* iso_frame_desc; int transfer_dma; int transfer_buffer; int transfer_buffer_length; int interval; int pipe; int complete; struct usb_data_stream* context; int dev; } ;
struct TYPE_5__ {int offset; int length; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int URB_ISO_ASAP ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int deb_mem (char*) ;
 struct urb* usb_alloc_urb (int,int ) ;
 int usb_allocate_stream_buffers (struct usb_data_stream*,int,int) ;
 int usb_free_urb (struct urb*) ;
 int usb_rcvisocpipe (int ,int ) ;
 int usb_urb_complete ;

__attribute__((used)) static int usb_isoc_urb_init(struct usb_data_stream *stream)
{
 int i,j;

 if ((i = usb_allocate_stream_buffers(stream,stream->props.count,
     stream->props.u.isoc.framesize*stream->props.u.isoc.framesperurb)) < 0)
  return i;


 for (i = 0; i < stream->props.count; i++) {
  struct urb *urb;
  int frame_offset = 0;

  stream->urb_list[i] = usb_alloc_urb(stream->props.u.isoc.framesperurb, GFP_KERNEL);
  if (!stream->urb_list[i]) {
   deb_mem("not enough memory for urb_alloc_urb!\n");
   for (j = 0; j < i; j++)
    usb_free_urb(stream->urb_list[j]);
   return -ENOMEM;
  }

  urb = stream->urb_list[i];

  urb->dev = stream->udev;
  urb->context = stream;
  urb->complete = usb_urb_complete;
  urb->pipe = usb_rcvisocpipe(stream->udev,stream->props.endpoint);
  urb->transfer_flags = URB_ISO_ASAP | URB_NO_TRANSFER_DMA_MAP;
  urb->interval = stream->props.u.isoc.interval;
  urb->number_of_packets = stream->props.u.isoc.framesperurb;
  urb->transfer_buffer_length = stream->buf_size;
  urb->transfer_buffer = stream->buf_list[i];
  urb->transfer_dma = stream->dma_addr[i];

  for (j = 0; j < stream->props.u.isoc.framesperurb; j++) {
   urb->iso_frame_desc[j].offset = frame_offset;
   urb->iso_frame_desc[j].length = stream->props.u.isoc.framesize;
   frame_offset += stream->props.u.isoc.framesize;
  }

  stream->urbs_initialized++;
 }
 return 0;
}
