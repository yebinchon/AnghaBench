
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivtv_stream {scalar_t__ type; } ;
struct ivtv_open_id {size_t type; struct ivtv* itv; } ;
struct ivtv {int decoding; struct ivtv_stream* streams; } ;


 int EAGAIN ;
 int EBUSY ;
 int IVTV_DEBUG_WARN (char*) ;
 scalar_t__ IVTV_DEC_STREAM_TYPE_MPG ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ ivtv_claim_stream (struct ivtv_open_id*,scalar_t__) ;
 int ivtv_set_speed (struct ivtv*,int) ;
 int ivtv_start_v4l2_decode_stream (struct ivtv_stream*,int ) ;

int ivtv_start_decoding(struct ivtv_open_id *id, int speed)
{
 struct ivtv *itv = id->itv;
 struct ivtv_stream *s = &itv->streams[id->type];
 int rc;

 if (atomic_read(&itv->decoding) == 0) {
  if (ivtv_claim_stream(id, s->type)) {

   IVTV_DEBUG_WARN("start decode, stream already claimed\n");
   return -EBUSY;
  }
  rc = ivtv_start_v4l2_decode_stream(s, 0);
  if (rc < 0) {
   if (rc == -EAGAIN)
    rc = ivtv_start_v4l2_decode_stream(s, 0);
   if (rc < 0)
    return rc;
  }
 }
 if (s->type == IVTV_DEC_STREAM_TYPE_MPG)
  return ivtv_set_speed(itv, speed);
 return 0;
}
