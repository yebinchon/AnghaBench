
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct uvc_urb {struct uvc_streaming* stream; struct urb* urb; } ;
struct TYPE_5__ {int header_size; scalar_t__ payload_size; scalar_t__ max_payload_size; } ;
struct TYPE_6__ {scalar_t__ buf_used; } ;
struct uvc_streaming {int urb_size; TYPE_2__ bulk; int last_fid; TYPE_3__ queue; scalar_t__ sequence; } ;
struct TYPE_4__ {scalar_t__ sequence; } ;
struct uvc_buffer {scalar_t__ bytesused; TYPE_1__ buf; int state; } ;
struct urb {int transfer_buffer_length; int * transfer_buffer; } ;


 int UVC_BUF_STATE_READY ;
 int UVC_STREAM_FID ;
 int uvc_queue_next_buffer (TYPE_3__*,struct uvc_buffer*) ;
 int uvc_video_encode_data (struct uvc_streaming*,struct uvc_buffer*,int *,int) ;
 int uvc_video_encode_header (struct uvc_streaming*,struct uvc_buffer*,int *,int) ;

__attribute__((used)) static void uvc_video_encode_bulk(struct uvc_urb *uvc_urb,
 struct uvc_buffer *buf, struct uvc_buffer *meta_buf)
{
 struct urb *urb = uvc_urb->urb;
 struct uvc_streaming *stream = uvc_urb->stream;

 u8 *mem = urb->transfer_buffer;
 int len = stream->urb_size, ret;

 if (buf == ((void*)0)) {
  urb->transfer_buffer_length = 0;
  return;
 }


 if (stream->bulk.header_size == 0) {
  ret = uvc_video_encode_header(stream, buf, mem, len);
  stream->bulk.header_size = ret;
  stream->bulk.payload_size += ret;
  mem += ret;
  len -= ret;
 }


 ret = uvc_video_encode_data(stream, buf, mem, len);

 stream->bulk.payload_size += ret;
 len -= ret;

 if (buf->bytesused == stream->queue.buf_used ||
     stream->bulk.payload_size == stream->bulk.max_payload_size) {
  if (buf->bytesused == stream->queue.buf_used) {
   stream->queue.buf_used = 0;
   buf->state = UVC_BUF_STATE_READY;
   buf->buf.sequence = ++stream->sequence;
   uvc_queue_next_buffer(&stream->queue, buf);
   stream->last_fid ^= UVC_STREAM_FID;
  }

  stream->bulk.header_size = 0;
  stream->bulk.payload_size = 0;
 }

 urb->transfer_buffer_length = stream->urb_size - len;
}
