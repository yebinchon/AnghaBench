
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cx18_stream {int id; int s_flags; } ;
struct cx18_open_id {int open_id; struct cx18* cx; } ;
struct TYPE_2__ {scalar_t__ insert_mpeg; } ;
struct cx18 {struct cx18_stream* streams; TYPE_1__ vbi; } ;


 int CX18_DEBUG_INFO (char*,...) ;
 int CX18_ENC_STREAM_TYPE_IDX ;
 int CX18_ENC_STREAM_TYPE_MPG ;
 int CX18_ENC_STREAM_TYPE_VBI ;
 int CX18_F_S_CLAIMED ;
 int CX18_F_S_INTERNAL_USE ;
 int CX18_WARN (char*) ;
 int EBUSY ;
 int EINVAL ;
 int cx18_raw_vbi (struct cx18*) ;
 int cx18_stream_enabled (struct cx18_stream*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

int cx18_claim_stream(struct cx18_open_id *id, int type)
{
 struct cx18 *cx = id->cx;
 struct cx18_stream *s = &cx->streams[type];
 struct cx18_stream *s_assoc;


 if (type == CX18_ENC_STREAM_TYPE_IDX) {
  CX18_WARN("MPEG Index stream cannot be claimed directly, but something tried.\n");
  return -EINVAL;
 }

 if (test_and_set_bit(CX18_F_S_CLAIMED, &s->s_flags)) {

  if (s->id == id->open_id) {

   return 0;
  }
  if (s->id == -1 && type == CX18_ENC_STREAM_TYPE_VBI) {



   s->id = id->open_id;
   CX18_DEBUG_INFO("Start Read VBI\n");
   return 0;
  }

  CX18_DEBUG_INFO("Stream %d is busy\n", type);
  return -EBUSY;
 }
 s->id = id->open_id;
 if (type != CX18_ENC_STREAM_TYPE_MPG)
  return 0;

 s_assoc = &cx->streams[CX18_ENC_STREAM_TYPE_IDX];
 if (cx->vbi.insert_mpeg && !cx18_raw_vbi(cx))
  s_assoc = &cx->streams[CX18_ENC_STREAM_TYPE_VBI];
 else if (!cx18_stream_enabled(s_assoc))
  return 0;

 set_bit(CX18_F_S_CLAIMED, &s_assoc->s_flags);


 set_bit(CX18_F_S_INTERNAL_USE, &s_assoc->s_flags);
 return 0;
}
