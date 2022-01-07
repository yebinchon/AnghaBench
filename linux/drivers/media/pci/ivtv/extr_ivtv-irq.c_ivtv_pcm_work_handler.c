
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ivtv_stream {int q_free; int q_full; int q_io; } ;
struct ivtv_buffer {scalar_t__ readpos; scalar_t__ bytesused; scalar_t__ buf; } ;
struct ivtv {int alsa; int (* pcm_announce_callback ) (int ,int *,size_t) ;struct ivtv_stream* streams; } ;


 size_t IVTV_ENC_STREAM_TYPE_PCM ;
 struct ivtv_buffer* ivtv_dequeue (struct ivtv_stream*,int *) ;
 int ivtv_enqueue (struct ivtv_stream*,struct ivtv_buffer*,int *) ;
 int stub1 (int ,int *,size_t) ;

__attribute__((used)) static void ivtv_pcm_work_handler(struct ivtv *itv)
{
 struct ivtv_stream *s = &itv->streams[IVTV_ENC_STREAM_TYPE_PCM];
 struct ivtv_buffer *buf;



 while (1) {






  buf = ivtv_dequeue(s, &s->q_io);
  if (buf == ((void*)0))
   buf = ivtv_dequeue(s, &s->q_full);
  if (buf == ((void*)0))
   break;

  if (buf->readpos < buf->bytesused)
   itv->pcm_announce_callback(itv->alsa,
    (u8 *)(buf->buf + buf->readpos),
    (size_t)(buf->bytesused - buf->readpos));

  ivtv_enqueue(s, buf, &s->q_free);
 }
}
