
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct uvc_video_queue {int buf_used; } ;
struct TYPE_2__ {unsigned int max_payload_size; unsigned int payload_size; } ;
struct uvc_streaming {TYPE_1__ bulk; struct uvc_video_queue queue; } ;
struct uvc_buffer {unsigned int bytesused; void* mem; } ;


 int memcpy (int *,void*,unsigned int) ;
 unsigned int min (unsigned int,unsigned int) ;

__attribute__((used)) static int uvc_video_encode_data(struct uvc_streaming *stream,
  struct uvc_buffer *buf, u8 *data, int len)
{
 struct uvc_video_queue *queue = &stream->queue;
 unsigned int nbytes;
 void *mem;


 mem = buf->mem + queue->buf_used;
 nbytes = min((unsigned int)len, buf->bytesused - queue->buf_used);
 nbytes = min(stream->bulk.max_payload_size - stream->bulk.payload_size,
   nbytes);
 memcpy(data, mem, nbytes);

 queue->buf_used += nbytes;

 return nbytes;
}
