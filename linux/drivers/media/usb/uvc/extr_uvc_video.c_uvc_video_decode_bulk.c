
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct uvc_urb {struct uvc_streaming* stream; struct urb* urb; } ;
struct TYPE_2__ {int header_size; scalar_t__ payload_size; int skip_payload; scalar_t__ max_payload_size; int header; } ;
struct uvc_streaming {TYPE_1__ bulk; } ;
struct uvc_buffer {scalar_t__ state; } ;
struct urb {int actual_length; int transfer_buffer_length; int * transfer_buffer; } ;


 int EAGAIN ;
 scalar_t__ UVC_BUF_STATE_READY ;
 int memcpy (int ,int *,int) ;
 int uvc_video_decode_data (struct uvc_urb*,struct uvc_buffer*,int *,int) ;
 int uvc_video_decode_end (struct uvc_streaming*,struct uvc_buffer*,int ,scalar_t__) ;
 int uvc_video_decode_meta (struct uvc_streaming*,struct uvc_buffer*,int *,int) ;
 int uvc_video_decode_start (struct uvc_streaming*,struct uvc_buffer*,int *,int) ;
 int uvc_video_next_buffers (struct uvc_streaming*,struct uvc_buffer**,struct uvc_buffer**) ;

__attribute__((used)) static void uvc_video_decode_bulk(struct uvc_urb *uvc_urb,
   struct uvc_buffer *buf, struct uvc_buffer *meta_buf)
{
 struct urb *urb = uvc_urb->urb;
 struct uvc_streaming *stream = uvc_urb->stream;
 u8 *mem;
 int len, ret;





 if (urb->actual_length == 0 && stream->bulk.header_size == 0)
  return;

 mem = urb->transfer_buffer;
 len = urb->actual_length;
 stream->bulk.payload_size += len;




 if (stream->bulk.header_size == 0 && !stream->bulk.skip_payload) {
  do {
   ret = uvc_video_decode_start(stream, buf, mem, len);
   if (ret == -EAGAIN)
    uvc_video_next_buffers(stream, &buf, &meta_buf);
  } while (ret == -EAGAIN);


  if (ret < 0 || buf == ((void*)0)) {
   stream->bulk.skip_payload = 1;
  } else {
   memcpy(stream->bulk.header, mem, ret);
   stream->bulk.header_size = ret;

   uvc_video_decode_meta(stream, meta_buf, mem, ret);

   mem += ret;
   len -= ret;
  }
 }







 if (!stream->bulk.skip_payload && buf != ((void*)0))
  uvc_video_decode_data(uvc_urb, buf, mem, len);




 if (urb->actual_length < urb->transfer_buffer_length ||
     stream->bulk.payload_size >= stream->bulk.max_payload_size) {
  if (!stream->bulk.skip_payload && buf != ((void*)0)) {
   uvc_video_decode_end(stream, buf, stream->bulk.header,
    stream->bulk.payload_size);
   if (buf->state == UVC_BUF_STATE_READY)
    uvc_video_next_buffers(stream, &buf, &meta_buf);
  }

  stream->bulk.header_size = 0;
  stream->bulk.skip_payload = 0;
  stream->bulk.payload_size = 0;
 }
}
