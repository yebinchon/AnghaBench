
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uvc_urb {struct uvc_streaming* stream; struct urb* urb; } ;
struct uvc_streaming {int queue; } ;
struct uvc_buffer {scalar_t__ state; } ;
struct urb {int number_of_packets; TYPE_1__* iso_frame_desc; scalar_t__ transfer_buffer; } ;
struct TYPE_2__ {scalar_t__ status; int actual_length; scalar_t__ offset; } ;


 int EAGAIN ;
 scalar_t__ UVC_BUF_STATE_DONE ;
 scalar_t__ UVC_BUF_STATE_ERROR ;
 int UVC_TRACE_FRAME ;
 int isight_decode (int *,struct uvc_buffer*,scalar_t__,int ) ;
 struct uvc_buffer* uvc_queue_next_buffer (int *,struct uvc_buffer*) ;
 int uvc_trace (int ,char*,scalar_t__) ;

void uvc_video_decode_isight(struct uvc_urb *uvc_urb, struct uvc_buffer *buf,
   struct uvc_buffer *meta_buf)
{
 struct urb *urb = uvc_urb->urb;
 struct uvc_streaming *stream = uvc_urb->stream;
 int ret, i;

 for (i = 0; i < urb->number_of_packets; ++i) {
  if (urb->iso_frame_desc[i].status < 0) {
   uvc_trace(UVC_TRACE_FRAME, "USB isochronous frame "
      "lost (%d).\n",
      urb->iso_frame_desc[i].status);
  }
  do {
   ret = isight_decode(&stream->queue, buf,
     urb->transfer_buffer +
     urb->iso_frame_desc[i].offset,
     urb->iso_frame_desc[i].actual_length);

   if (buf == ((void*)0))
    break;

   if (buf->state == UVC_BUF_STATE_DONE ||
       buf->state == UVC_BUF_STATE_ERROR)
    buf = uvc_queue_next_buffer(&stream->queue,
       buf);
  } while (ret == -EAGAIN);
 }
}
